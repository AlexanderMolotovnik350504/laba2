class DropCategoriesTable < ActiveRecord::Migration
   def up
    drop_table :shedules
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
