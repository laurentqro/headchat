class User < ActiveRecord::Base
  has_many :messages
  has_many :mentions

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  # attr_accessible :title, :body

  def self.create_user_from_message_hash(message_hash)
    unless User.exists? name: message_hash['from']['name']
    User.create name: message_hash['from']['name'],
                email: "#{message_hash['from']['name'].gsub(/ /, "").downcase}@wdi4.com",
                password: "password",
                password_confirmation: "password"
    end
  end
end


