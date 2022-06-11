require 'rails_helper'

RSpec.describe 'Weather Service' do
  it 'gets weather data based on longitude and latitude' do
    location = 'Denver,CO'
    forecast = WeatherService.get_forecast(location)

    expect(forecast).to be_a(Hash)
    expect(forecast[:lat]).to be_a(Float)
    expect(forecast[:lon]).to be_a(Float)
    expect(forecast[:timezone]).to eq("America/Denver")
  end
end
