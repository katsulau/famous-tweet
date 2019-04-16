class DropUsers < ActiveRecord::Migration[5.2]
  def change
    drop_table :users
  end
  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
