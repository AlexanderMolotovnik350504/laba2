class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :room_id
      t.string :break_time
      t.string :open_time
      t.string :closed_time
      t.string :step_time
      t.string :day_off

      t.timestamps null: false
    end
  end
end
