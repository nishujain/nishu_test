class AddProfileCountToUser < ActiveRecord::Migration
  def change
    add_column :users, :profile_count, :integer, default: 0
  end
end
