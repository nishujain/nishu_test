class AddPhoneToUser < ActiveRecord::Migration
  def change
    add_column :users, :mobile_number, :string
    add_column :users, :verification_code, :string
    add_column :users, :is_verified, :boolean
  end
end
