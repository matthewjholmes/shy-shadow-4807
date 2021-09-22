require 'rails_helper'

RSpec.describe 'plots index page' do
  before do
    @garden = Garden.create(name: "Garden", organic: false)
    @plot1 = Plot.create(number: 1, size: "bigish", direction: "north", garden_id: @garden.id)
    @plot2 = Plot.create(number: 2, size: "smallish", direction: "south", garden_id: @garden.id)
    visit plots_path
    @plant1 = @plot1.plants.create(name: "Sunflower", description: "Yellow", days_to_harvest: 90)
    @plant2 = @plot1.plants.create(name: "Poppy", description: "Purple", days_to_harvest: 90)
    @plant3 = @plot2.plants.create(name: "Wheat", description: "Yummy", days_to_harvest: 90)
    @plant4 = @plot2.plants.create(name: "Barley", description: "Less yummy", days_to_harvest: 90)
  end

  it 'when i visit the plots index page' do
    expect(current_path).to eq(plots_path)
  end

  it 'i see a list of all plot numbers' do
    expect(page).to have_content("1")
    expect(page).to have_content("2")
  end

  it 'under each plot number i see names of all plot plants' do
    expect(page).to have_content(@plant1.name)
    expect(page).to have_content(@plant2.name)
    expect(page).to have_content(@plant3.name)
    expect(page).to have_content(@plant4.name)
  end
end
