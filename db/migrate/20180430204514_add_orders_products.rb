class AddOrdersProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :orders_products do |t|
      t.column :quantity, :integer
      t.column :product_id, :integer
      t.column :order_id, :integer

      t.timestamps
    end
  end
end
