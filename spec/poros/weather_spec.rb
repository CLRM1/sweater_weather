require 'rails_helper'

RSpec.describe Weather do

  # xit 'exists' do
  #   json_response = File.open('./spec/fixtures/forecast.json')
  #
  #   forecast = Weather.new(json_response)
  #   require 'pry'; binding.pry
  #
  #   expect(forecast).to be_a(Weather)
  # end
end



# forecast_data = {data: {
  # id: nil,
  # type: 'forecast',
  # attributes: {
  #   current_weather: {
  #     datetime: '2020-09-30 13:27:03 -0600',
  #     sunrise: '2020-09-30 06:27:03 -0600',
  #     sunset: '2020-09-30 18:27:03 -0600',
  #     temperature: 92.5,
  #     feels_like: 93.2,
  #     humidity: 75.2,
  #     uvi: 13.4,
  #     visibility: 34,
  #     conditions: 'partly cloudy',
  #     icon: '23'
  #   },
  #   daily_weather: [
  #
  #     {date: '2020-10-01',
  #     sunrise: '2020-10-01 06:27:03 -0600',
  #     sunset: '2020-10-01 18:27:03 -0600',
  #     max_temp: 95,
  #     min_temp: 45,
  #     conditions: 'partly cloudy',
  #     icon: '23'},
  #
  #     {date: '2020-10-02',
  #     sunrise: '2020-10-02 06:27:03 -0600',
  #     sunset: '2020-10-02 18:27:03 -0600',
  #     max_temp: 97,
  #     min_temp: 45,
  #     conditions: 'partly cloudy',
  #     icon: '23'},
  #
  #     {date: '2020-10-03',
  #     sunrise: '2020-10-03 06:27:03 -0600',
  #     sunset: '2020-10-03 18:27:03 -0600',
  #     max_temp: 75,
  #     min_temp: 45,
  #     conditions: 'rainy',
  #     icon: '23'},
  #
  #     {date: '2020-10-04',
  #     sunrise: '2020-10-04 06:27:03 -0600',
  #     sunset: '2020-10-04 18:27:03 -0600',
  #     max_temp: 85,
  #     min_temp: 45,
  #     conditions: 'cloudy',
  #     icon: '23'},
  #
  #     {date: '2020-10-05',
  #     sunrise: '2020-10-05 06:27:03 -0600',
  #     sunset: '2020-10-05 18:27:03 -0600',
  #     max_temp: 97,
  #     min_temp: 45,
  #     conditions: 'partly cloudy',
  #     icon: '23'}],
  #
  #     hourly_weather: [
  #         {time: '15:00:00',
  #         temperature: 95,
  #         conditions: 'sunny',
  #         icon: '23'},
  #         {time: '16:00:00',
  #         temperature: 95,
  #         conditions: 'sunny',
  #         icon: '23'},
  #         {time: '17:00:00',
  #         temperature: 95,
  #         conditions: 'sunny',
  #         icon: '23'},
  #         {time: '18:00:00',
  #         temperature: 95,
  #         conditions: 'sunny',
  #         icon: '23'},
  #         {time: '19:00:00',
  #         temperature: 95,
  #         conditions: 'sunny',
  #         icon: '23'},
  #         {time: '20:00:00',
  #         temperature: 95,
  #         conditions: 'sunny',
  #         icon: '23'},
  #         {time: '21:00:00',
  #         temperature: 95,
  #         conditions: 'sunny',
  #         icon: '23'},
  #         {time: '22:00:00',
  #         temperature: 95,
  #         conditions: 'sunny',
  #         icon: '23'}]
  #   }
  # }}
