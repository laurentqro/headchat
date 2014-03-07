class Message < ActiveRecord::Base

  attr_accessible :body, :user_id, :date, :quote

  belongs_to :user

  def self.fetch_latest_messages
    client = HipChat::Client.new(ENV['API_TOKEN'])
    room = client.rooms.select { |room| room.name.include?("WDI London December 2013") }.first
    history_string = room.history()
    history_hash = JSON.parse(history_string)
    messages = history_hash.first[1]

    messages.each do |message_hash|
      User.create_user_from_message_hash(message_hash)
      Message.create_message(message_hash)
    end
  end

  def self.create_message(message_hash)
    Message.create(
      date: message_hash['date'],
      user_id: User.where(name: message_hash['from']['name']).first.id,
      body: message_hash['message']
      )
  end

  def parse_mentions
    /\@[a-zA-Z]+/.match(self.body)
  end

  # def self.fetch_all_messages
  #   start_date = Date.parse('2013-12-16').to_s
  #   end_date = Date.today.to_s

  #   client = HipChat::Client.new(API_TOKEN)
  #   room = client.rooms.select { |room| room.name.include?("WDI London December 2013") }.first

  #   start_date.to_s.upto(end_date) do |date|
  #     history_string = room.history(date: date, timezone: 'GMT')
  #     history_hash = JSON.parse(history_string)
  #     messages = history_hash.first[1]

  #     messages.each do |message|

  #       User.create name: message['from']['name'], email: "#{message['from']['name'].gsub(/ /, "").downcase}@wdi4.com", password: "password", password_confirmation: "password" unless User.exists?(name: message['from']['name'])

  #       Message.create(
  #         date: message['date'],
  #         user_id: User.where(name: message['from']['name']).first.id,
  #         body: message['message']
  #         )
  #     end
  #     sleep(5)
  #   end
  # end
end




