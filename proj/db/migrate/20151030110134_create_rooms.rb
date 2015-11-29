class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :name
      t.integer :hospital_id
      t.timestamps null: false
    end
  end
end
