class DropAuthorsTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :authors
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
