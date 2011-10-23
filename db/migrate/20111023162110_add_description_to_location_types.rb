class AddDescriptionToLocationTypes < ActiveRecord::Migration
  def change
    add_column :location_types, :description, :string
  end
end
