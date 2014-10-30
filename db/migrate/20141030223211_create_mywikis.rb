class CreateMywikis < ActiveRecord::Migration
  def change
    create_table :mywikis do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
