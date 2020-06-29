class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.boolean :approved_for_scout

      t.timestamps
    end
  end
end
