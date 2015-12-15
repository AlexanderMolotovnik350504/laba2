class CreateQueuEs < ActiveRecord::Migration
  def change
    create_table :queu_es do |t|
      t.integer :room_id
      t.integer :user_id
      t.string :date
      t.string :time

      t.timestamps null: false
    end
  end
end
