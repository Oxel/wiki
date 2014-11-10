class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :plan_id, default: 1
      t.string :email
      t.datetime :created_at
      t.datetime :updated_at
      t.string :stripe_customer_token

      t.timestamps
    end
  end
end
