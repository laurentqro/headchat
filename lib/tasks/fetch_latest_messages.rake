require 'rake/dsl_definition'
require 'rake'

desc "Fetch latest messages and save them to the database"
task :fetch_latest_messages => :environment do
  Message.fetch_latest_messages
end
