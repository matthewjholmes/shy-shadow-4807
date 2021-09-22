class ChangeTablePlantColumnPlotsName < ActiveRecord::Migration[5.2]
  def change
    rename_table :plant_tables, :plants
    rename_column :plants, :plots_id, :plot_id
  end
end
