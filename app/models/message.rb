class Message < ActiveRecord::Base

  attr_accessible :body, :user_id

  belongs_to :user

  API_TOKEN = "4804a586d045024f80e57c088e2295" # TO DO : put in ENV variable

  def self.fetch_history
    client = HipChat::Client.new(API_TOKEN)
    room = client.rooms.select { |room| room.name.include?("WDI London December 2013") }.first
    history_string = room.history()
    history_hash = JSON.parse(history_string)
    messages = history_hash.first[1]
    messages.each do |message|

    User.create name: message['from']['name'], email: "#{message['from']['name'].strip.downcase}@wdi4.com", password: "password", password_confirmation: "password" unless User.exists?(name: message['from']['name'])

      Message.create(
        date: message['date'],
        user_id: User.where(name: message['from']['name']).first.id,
        body: message['message']
        )
    end
  end

end


