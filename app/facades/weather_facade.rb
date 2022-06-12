class WeatherFacade

  def self.get_forecast(location)
    forecast_data = WeatherService.get_forecast(location)
    Weather.new(forecast_data)
  end

end
