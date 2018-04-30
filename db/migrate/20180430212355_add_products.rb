class AddProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.column :name, :varchar
      t.column :price, :money

      t.timestamps
    end
  end
end
