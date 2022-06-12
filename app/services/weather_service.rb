class WeatherService

  def self.get_forecast(location)

    conn = Faraday.new(url: "http://api.openweathermap.org/data/2.5/onecall?&lat=#{location[0]}&lon=#{location[1]}&units=imperial&appid=#{ENV['open_weather_api_key']}")
    response = conn.get

    JSON.parse(response.body, symbolize_names: true)
  end
end
