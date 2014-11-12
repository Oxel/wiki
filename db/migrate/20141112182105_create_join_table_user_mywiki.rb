class CreateJoinTableUserMywiki < ActiveRecord::Migration
  def change
    create_join_table :Users, :Mywikis do |t|
      # t.index [:user_id, :mywiki_id]
      # t.index [:mywiki_id, :user_id]
    end
  end
end
