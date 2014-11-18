class CreateCollaborations < ActiveRecord::Migration
  def change
    create_table :collaborations do |t|
      t.belongs_to :user, index: true
      t.belongs_to :mywiki, index: true

      t.timestamps
    end
  end
end
