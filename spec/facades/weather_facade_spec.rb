require 'rails_helper'

RSpec.describe 'Weather Facade' do

  it 'returns the weather based on a location' do
    location = 'Denver,CO'
    forecast = WeatherFacade.get_forecast(location)
    expect(forecast.datetime).to be_a(String)
    expect(forecast.sunrise).to be_a(String)
    expect(forecast.sunset).to be_a(String)
    expect(forecast.temperature).to be_a(Float)
    expect(forecast.feels_like).to be_a(Float)
    expect(forecast.humidity).to be_a(Float)
    expect(forecast.daily).to be_a(Array)
    expect(forecast.hourly).to be_a(Array)
  end
end
