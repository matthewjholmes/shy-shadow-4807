require 'rails_helper'

RSpec.describe 'plots index page' do
  before do
    visit plots_path
  end

  it 'when i visit the plots index page' do
    expect(current_path).to eq(plots_path)
  end

  it 'i see a list of all plot numbers'

end
