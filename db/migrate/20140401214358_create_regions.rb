class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.column :name, :string
    end
    remove_column :sightings, :region
    add_column :sightings, :region_id, :int
  end
end
