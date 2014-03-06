class Mention < ActiveRecord::Base
  attr_accessible :message_id, :tagged_user_id, :user_id
end
