class WeatherService

  def self.get_forecast(location)
    coordinates = MapsFacade.get_coordinates(location)
    lat = coordinates[0]
    long = coordinates[1]

    conn = Faraday.new(url: "http://api.openweathermap.org/data/2.5/onecall?&lat=#{lat}&lon=#{long}&units=imperial&appid=#{ENV['open_weather_api_key']}")
    response = conn.get
    
    JSON.parse(response.body, symbolize_names: true)
  end
end
