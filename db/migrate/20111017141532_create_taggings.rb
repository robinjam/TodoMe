class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.references :location_type
      t.references :tag

      t.timestamps
    end
    add_index :taggings, :location_type_id
    add_index :taggings, :tag_id
  end
end
