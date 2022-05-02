class DropProductsTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :bitchbooks
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
