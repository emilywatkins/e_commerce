class AddAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
