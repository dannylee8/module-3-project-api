class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.float :balance
      t.float :total_profit

      t.timestamps
    end
  end
end
