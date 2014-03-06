class Mention < ActiveRecord::Base
  attr_accessible :message_id, :tagged_user_id, :user_id

  belongs_to :message
  belongs_to :user

end
