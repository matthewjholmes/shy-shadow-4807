class Plot < ApplicationRecord
  belongs_to :garden
  has_many :plants

  def plant_names
    plants.map { |plant| plant.name }
  end
end
