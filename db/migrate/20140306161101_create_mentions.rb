class CreateMentions < ActiveRecord::Migration
  def change
    create_table :mentions do |t|
      t.integer :user_id
      t.integer :message_id
      t.integer :tagged_user_id

      t.timestamps
    end
  end
end
