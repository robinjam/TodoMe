class CreateLocationTypes < ActiveRecord::Migration
  def change
    create_table :location_types do |t|
      t.references :tagging
      t.string :name

      t.timestamps
    end
    add_index :location_types, :tagging_id
  end
end
