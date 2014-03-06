class AddQuoteToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :quote, :boolean, default: false
  end
end
