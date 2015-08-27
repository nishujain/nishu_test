class AddPlanTypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :plan_type, :string, default: "Free plan"
  end
end
