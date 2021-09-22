require 'rails_helper'

RSpec.describe 'plots index page' do
  before do
    @garden = Garden.create(name: "Garden", organic: false)
    @plot1 = Plot.create(number: 1, size: "bigish", direction: "north", garden_id: @garden.id)
    @plot2 = Plot.create(number: 2, size: "smallish", direction: "south", garden_id: @garden.id)
    visit plots_path
  end

  it 'when i visit the plots index page' do
    expect(current_path).to eq(plots_path)
  end

  it 'i see a list of all plot numbers' do
    expect(page).to have_content("1")
    expect(page).to have_content("2")
  end
end
