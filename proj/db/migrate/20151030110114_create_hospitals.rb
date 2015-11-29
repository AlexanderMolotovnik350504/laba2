class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name

      t.timestamps null: false
    end
    create_table :rooms do |t|
      t.belongs_to :hospital, index: true
      
      t.timestamps null: false
    end
  end
end
