class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :tagging
      t.string :name

      t.timestamps
    end
    add_index :tags, :tagging_id
  end
end
