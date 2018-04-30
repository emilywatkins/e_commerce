class ChangeTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :orders_products, :order_items
  end
end
