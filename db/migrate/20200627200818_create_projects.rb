class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :category
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
