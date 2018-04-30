class AddOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.column :status, :varchar
      t.column :account_id, :integer
      t.column :total_price, :integer

      t.timestamps
    end
  end
end
