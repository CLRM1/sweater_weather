require 'rails_helper'

RSpec.describe 'Maps Service' do
  it 'returns the longitude and latitude for a given city' do
    location = 'Denver,CO'
    coordinates = MapsService.get_coordinates(location)
    lat = coordinates[:results][0][:locations][0][:latLng][:lat]
    long = coordinates[:results][0][:locations][0][:latLng][:lng]

    expect(lat).to eq(39.738453)
    expect(long).to eq(-104.984853)
  end
end
