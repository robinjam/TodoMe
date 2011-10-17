class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.references :location_type
      t.string :lat
      t.string :long
      t.string :close_mon
      t.string :close_tue
      t.string :close_wed
      t.string :close_thu
      t.string :close_fri
      t.string :close_sat
      t.string :close_sun

      t.timestamps
    end
    add_index :locations, :location_type_id
  end
end
