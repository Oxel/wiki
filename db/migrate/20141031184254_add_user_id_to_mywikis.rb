class AddUserIdToMywikis < ActiveRecord::Migration
  def change
    add_column :mywikis, :user_id, :integer
    add_index :mywikis, :user_id
  end
end
