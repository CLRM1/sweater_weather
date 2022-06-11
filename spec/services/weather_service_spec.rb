require 'rails_helper'

RSpec.describe 'Weather Service' do
  it 'gets weather data based on longitude and latitude' do
    location = 'Denver,CO'
    forecast = WeatherService.get_forecast(location)
    expect(forecast).to be_a(Hash)
  end
end
