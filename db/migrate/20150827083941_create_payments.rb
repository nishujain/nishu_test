class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.string :plan_type
      t.integer :plan_price
      t.string :customer_id
      t.string :stripe_token
      t.string :stripe_token_type
      t.string :stripe_email
      t.string :payment_status

      t.timestamps null: false
    end
  end
end
