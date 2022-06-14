class TripSerializer

  def self.format_trip(travel_time, origin, destination, forecast)
    {
      data: {
        id: nil,
        type: 'roadtrip',
        attributes: {
          start_city: origin, 
          end_city: destination,
          travel_time: travel_time,
          weather_at_eta: {
            temperature: forecast.temperature,
            conditions: forecast.conditions
          }
        }
      }

    }
  end

end