class DropShedule < ActiveRecord::Migration
   def up
    drop_table :rooms
  end
   def down
     drop_table :shedules
  end
end
