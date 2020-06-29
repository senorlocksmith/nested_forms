class CreateScriptLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :script_locations do |t|
      t.string :name
      t.string :description
      t.string :setting
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
