require 'rails_helper'

RSpec.describe 'Map Facade' do

  it 'returns the coordinates' do
    location = 'Denver,CO'
    coordinates = MapsFacade.get_coordinates(location)
    expect(coordinates).to be_a(Array)
  end
end
