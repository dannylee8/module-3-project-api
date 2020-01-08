class AddDefaultToTotalProfitInUsersTable < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :total_profit, :float, :default => 0
  end
end
