require 'date'

class Weather
  attr_reader :datetime,
              :sunrise,
              :sunset,
              :temperature,
              :feels_like,
              :humidity,
              :uvi,
              :visibility,
              :conditions,
              :icon,
              :daily,
              :hourly,
              :days,
              :hours,
              :max_temp,
              :min_temp

  def initialize(data)
    @datetime = Time.at(data[:current][:dt]).to_datetime.to_s
    @sunrise = Time.at(data[:current][:sunrise]).to_datetime.to_s
    @sunset = Time.at(data[:current][:sunset]).to_datetime.to_s
    @temperature = data[:current][:temp]
    @feels_like = data[:current][:feels_like]
    @humidity = data[:current][:humidity].to_f
    @uvi = data[:current][:uvi].to_f
    @visibility = data[:current][:visibility].to_f
    @conditions = data[:current][:weather][0][:description]
    @icon = data[:current][:weather][0][:icon]
    @daily = data[:daily][0..4]
    @days = data[:daily].map {|day| Time.at(day[:dt]).to_datetime}
    @hourly = data[:hourly][0..7]
    @hours = data[:hourly].map {|hour| Time.at(hour[:dt]).to_datetime}
  end
end
