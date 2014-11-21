class AddPrivateToMywikis < ActiveRecord::Migration
  def change
    add_column :mywikis, :private, :boolean, default: false
  end
end
