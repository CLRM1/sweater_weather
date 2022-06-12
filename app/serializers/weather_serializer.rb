class WeatherSerializer

  def self.format_forecast(forecast_data)
    {
      data:
        {
          id: nil,
          type: 'forecast',
          attributes: {
            current_weather: {
              datetime: forecast_data.datetime,
              sunrise: forecast_data.sunrise,
              sunset: forecast_data.sunset,
              temperature: forecast_data.temperature,
              feels_like: forecast_data.feels_like,
              humidity: forecast_data.humidity,
              uvi: forecast_data.uvi,
              visibility: forecast_data.visibility,
              conditions: forecast_data.conditions,
              icon: forecast_data.icon,
            },
            daily_weather: forecast_data.daily.map {|day|
            {
              date: Time.at(day[:dt]).to_datetime.to_s,
              sunrise: Time.at(day[:dt]).to_datetime.to_s,
              sunset: Time.at(day[:dt]).to_datetime.to_s,
              max_temp: day[:temp][:max],
              min_temp: day[:temp][:min],
              conditions: day[:weather][0][:description],
              icon: day[:weather][0][:icon]
            }},
            hourly_weather: forecast_data.hourly.map {|hour|
              {
                time: Time.at(hour[:dt]).to_datetime.to_s,
                temperature: hour[:temp],
                conditions: hour[:weather][0][:description],
                icon: hour[:weather][0][:icon]
              }}
          }
        }
    }
  end
end
