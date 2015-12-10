class CreateShedules < ActiveRecord::Migration
  def change
    change_table :shedules do |t|
      t.references :room, index: true, foreign_key: true
      t.integer :break_time
      t.integer :open_time
      t.integer :closed_time
      t.integer :step_time
      t.integer :day_off

      t.timestamps null: false
    end
  end
end
