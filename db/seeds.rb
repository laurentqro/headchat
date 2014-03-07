# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

students = [
  {name: "Alex Pounds", email: "alex@wdi4.com", password: "password", password_confirmation: "password"},
  {name: "Michael Pavling", email: "michael@wdi4.com", password: "password", password_confirmation: "password"},
  {name: "Jonny Adshead", email: "jonny@wdi4.com", password: "password", password_confirmation: "password"},
  {name: "Nikolas Mantis", email: "nikolas@wdi4.com", password: "password", password_confirmation: "password"},
  {name: "Tim Elder", email: "tim@wdi4.com", password: "password", password_confirmation: "password"},
  {name: "Paul Lainchbury", email: "paul@wdi4.com", password: "password", password_confirmation: "password"},
  {name: "Mark Randhawa", email: "mark@wdi4.com", password: "password", password_confirmation: "password"},
  {name: "Nico Castro", email: "nico@wdi4.com", password: "password", password_confirmation: "password"},
  {name: "Kriszta Matyi", email: "kriszta@wdi4.com", password: "password", password_confirmation: "password"},
  {name: "Clemens Kazda", email: "clems@wdi4.com", password: "password", password_confirmation: "password"},
  {name: "Thomas Martin", email: "tom@wdi4.com", password: "password", password_confirmation: "password"},
  {name: "Imran Sulemanji", email: "imran@wdi4.com", password: "password", password_confirmation: "password"},
  {name: "Max Norton", email: "max@wdi4.com", password: "password", password_confirmation: "password"},
  {name: "Max Perchik", email: "maxp@wdi4.com", password: "password", password_confirmation: "password"},
  {name: "Andy Born", email: "andy@wdi4.com", password: "password", password_confirmation: "password"},
  {name: "Laurent Curau", email: "laurent@wdi4.com", password: "password", password_confirmation: "password"},
  {name: "Richill Tamakloe", email: "richill@wdi4.com", password: "password", password_confirmation: "password"},
  {name: "Issam Sultan", email: "issam@wdi4.com", password: "password", password_confirmation: "password"}
]

students.each do |student|
  User.create name: student[:name], email: student[:email], password: student[:password], password_confirmation: student[:password_confirmation]
end

# start_date = Date.parse('2013-12-16')
# end_date = Date.today

# start_date.upto(end_date) do |date|
#   history_string = room.history(date: date, timezone: 'GMT')
#   history_hash = JSON.parse(history_string)
#   messages = history_hash.first[1]

#   messages.each do |message|

#     User.create name: message['from']['name'], email: "#{message['from']['name'].gsub(/ /, "").downcase}@wdi4.com", password: "password", password_confirmation: "password" unless User.exists?(name: message['from']['name'])

#       Message.create(
#         date: message['date'],
#         user_id: User.where(name: message['from']['name']).first.id,
#         body: message['message']
#         )
#     end
#   end
#   sleep(5)
# end
