class CreatePlantTable < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_tables do |t|
      t.string "name"
      t.string "description"
      t.integer "days_to_harvest"
      t.references :plots, foreign_key: true

      t.timestamps
    end
  end
end
