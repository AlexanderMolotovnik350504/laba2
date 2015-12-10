class CreateShedules < ActiveRecord::Migration
  def change
    create_table :shedules do |t|
      t.references :room, index: true, foreign_key: true
      t.time :breake_time
      t.timestamps null: false
    end
   def down
    drop_table :shedules
   end
  end
end
