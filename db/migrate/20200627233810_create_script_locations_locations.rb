class CreateScriptLocationsLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :script_locations_locations do |t|
      t.references :script_location, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.timestamps
    end
  end
end
