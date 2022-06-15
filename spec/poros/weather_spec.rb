require 'rails_helper'

RSpec.describe Weather do

  it 'exist with the correct attributes' do
    forecast_data = {
      "lat": 39.7392,
      "lon": -104.9847,
      "timezone": "America/Denver",
      "timezone_offset": -21600,
      "current": {
          "dt": 1655256071,
          "sunrise": 1655206286,
          "sunset": 1655260150,
          "temp": 79.2,
          "feels_like": 79.2,
          "pressure": 1002,
          "humidity": 28,
          "dew_point": 43.32,
          "uvi": 0.44,
          "clouds": 15,
          "visibility": 10000,
          "wind_speed": 7,
          "wind_deg": 351,
          "wind_gust": 15.01,
          "weather": [
              {
                  "id": 801,
                  "main": "Clouds",
                  "description": "few clouds",
                  "icon": "02d"
              }
          ]
      },
      "hourly":
      [{
        "dt": 1655254800,
        "temp": 79.2,
        "feels_like": 79.2,
        "pressure": 1002,
        "humidity": 28,
        "dew_point": 43.32,
        "uvi": 0.44,
        "clouds": 15,
        "visibility": 10000,
        "wind_speed": 7.25,
        "wind_deg": 22,
        "wind_gust": 12.66,
        "weather": [
            {
                "id": 801,
                "main": "Clouds",
                "description": "few clouds",
                "icon": "02d"
            }
        ],
        "pop": 0
    }],
      "daily": [
          {
              "dt": 1655233200,
              "sunrise": 1655206286,
              "sunset": 1655260150,
              "moonrise": 1655263260,
              "moonset": 1655205720,
              "moon_phase": 0.5,
              "temp": {
                  "day": 81.5,
                  "min": 61.23,
                  "max": 84.07,
                  "night": 65.37,
                  "eve": 79.2,
                  "morn": 62.89
              },
              "feels_like": {
                  "day": 79.41,
                  "night": 63.77,
                  "eve": 79.2,
                  "morn": 61
              },
              "pressure": 1001,
              "humidity": 17,
              "dew_point": 32.23,
              "wind_speed": 17.22,
              "wind_deg": 79,
              "wind_gust": 25.17,
              "weather": [
                  {
                      "id": 801,
                      "main": "Clouds",
                      "description": "few clouds",
                      "icon": "02d"
                  }
              ],
              "clouds": 22,
              "pop": 0.08,
              "uvi": 9.91
          },
          {
              "dt": 1655319600,
              "sunrise": 1655292686,
              "sunset": 1655346574,
              "moonrise": 1655353560,
              "moonset": 1655295840,
              "moon_phase": 0.55,
              "temp": {
                  "day": 82.53,
                  "min": 56.08,
                  "max": 88.25,
                  "night": 73.53,
                  "eve": 86.13,
                  "morn": 58.78
              },
              "feels_like": {
                  "day": 79.99,
                  "night": 71.85,
                  "eve": 82.83,
                  "morn": 56.8
              },
              "pressure": 1008,
              "humidity": 8,
              "dew_point": 15.75,
              "wind_speed": 12.75,
              "wind_deg": 164,
              "wind_gust": 25.43,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "clouds": 0,
              "pop": 0.04,
              "uvi": 11.04
          },
          {
              "dt": 1655406000,
              "sunrise": 1655379089,
              "sunset": 1655432996,
              "moonrise": 1655443140,
              "moonset": 1655386620,
              "moon_phase": 0.59,
              "temp": {
                  "day": 90.66,
                  "min": 64.8,
                  "max": 93.92,
                  "night": 77.34,
                  "eve": 91.24,
                  "morn": 67.28
              },
              "feels_like": {
                  "day": 86.49,
                  "night": 76.42,
                  "eve": 86.99,
                  "morn": 64.89
              },
              "pressure": 1010,
              "humidity": 9,
              "dew_point": 24.42,
              "wind_speed": 14.18,
              "wind_deg": 162,
              "wind_gust": 29.04,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "clouds": 0,
              "pop": 0,
              "uvi": 11.73
          },
          {
              "dt": 1655492400,
              "sunrise": 1655465493,
              "sunset": 1655519416,
              "moonrise": 0,
              "moonset": 1655477580,
              "moon_phase": 0.63,
              "temp": {
                  "day": 90.61,
                  "min": 69.31,
                  "max": 96.82,
                  "night": 87.6,
                  "eve": 94.64,
                  "morn": 71.92
              },
              "feels_like": {
                  "day": 86.63,
                  "night": 83.97,
                  "eve": 90,
                  "morn": 70.38
              },
              "pressure": 1008,
              "humidity": 17,
              "dew_point": 40.51,
              "wind_speed": 22.91,
              "wind_deg": 151,
              "wind_gust": 32.75,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "clouds": 1,
              "pop": 0.04,
              "uvi": 12.17
          },
          {
              "dt": 1655578800,
              "sunrise": 1655551899,
              "sunset": 1655605834,
              "moonrise": 1655532000,
              "moonset": 1655568600,
              "moon_phase": 0.67,
              "temp": {
                  "day": 92.46,
                  "min": 71.47,
                  "max": 97.47,
                  "night": 77,
                  "eve": 83.57,
                  "morn": 71.47
              },
              "feels_like": {
                  "day": 88.29,
                  "night": 76.28,
                  "eve": 81.66,
                  "morn": 70.16
              },
              "pressure": 1006,
              "humidity": 16,
              "dew_point": 40.3,
              "wind_speed": 20.07,
              "wind_deg": 148,
              "wind_gust": 18.48,
              "weather": [
                  {
                      "id": 500,
                      "main": "Rain",
                      "description": "light rain",
                      "icon": "10d"
                  }
              ],
              "clouds": 73,
              "pop": 0.27,
              "rain": 0.12,
              "uvi": 11.13
          },
          {
              "dt": 1655665200,
              "sunrise": 1655638307,
              "sunset": 1655692250,
              "moonrise": 1655620380,
              "moonset": 1655659380,
              "moon_phase": 0.7,
              "temp": {
                  "day": 91.47,
                  "min": 64.09,
                  "max": 91.47,
                  "night": 64.09,
                  "eve": 88.11,
                  "morn": 68.83
              },
              "feels_like": {
                  "day": 87.35,
                  "night": 63.73,
                  "eve": 84.61,
                  "morn": 67.57
              },
              "pressure": 1006,
              "humidity": 16,
              "dew_point": 39.63,
              "wind_speed": 19.04,
              "wind_deg": 278,
              "wind_gust": 20.13,
              "weather": [
                  {
                      "id": 500,
                      "main": "Rain",
                      "description": "light rain",
                      "icon": "10d"
                  }
              ],
              "clouds": 22,
              "pop": 0.74,
              "rain": 2.6,
              "uvi": 12
          },
          {
              "dt": 1655751600,
              "sunrise": 1655724717,
              "sunset": 1655778665,
              "moonrise": 1655708460,
              "moonset": 1655749920,
              "moon_phase": 0.75,
              "temp": {
                  "day": 84.33,
                  "min": 66.33,
                  "max": 90.77,
                  "night": 73.04,
                  "eve": 78.85,
                  "morn": 66.33
              },
              "feels_like": {
                  "day": 81.75,
                  "night": 72.07,
                  "eve": 78.85,
                  "morn": 65.19
              },
              "pressure": 1009,
              "humidity": 24,
              "dew_point": 43.47,
              "wind_speed": 16.28,
              "wind_deg": 290,
              "wind_gust": 20.22,
              "weather": [
                  {
                      "id": 500,
                      "main": "Rain",
                      "description": "light rain",
                      "icon": "10d"
                  }
              ],
              "clouds": 55,
              "pop": 0.74,
              "rain": 0.41,
              "uvi": 12
          },
          {
              "dt": 1655838000,
              "sunrise": 1655811128,
              "sunset": 1655865078,
              "moonrise": 1655796360,
              "moonset": 1655840280,
              "moon_phase": 0.77,
              "temp": {
                  "day": 83.82,
                  "min": 64.58,
                  "max": 89.8,
                  "night": 79.63,
                  "eve": 86.38,
                  "morn": 64.58
              },
              "feels_like": {
                  "day": 81.1,
                  "night": 79.63,
                  "eve": 83.08,
                  "morn": 63.93
              },
              "pressure": 1010,
              "humidity": 19,
              "dew_point": 36.75,
              "wind_speed": 9.89,
              "wind_deg": 86,
              "wind_gust": 15.61,
              "weather": [
                  {
                      "id": 500,
                      "main": "Rain",
                      "description": "light rain",
                      "icon": "10d"
                  }
              ],
              "clouds": 60,
              "pop": 0.71,
              "rain": 1.12,
              "uvi": 12
          }
      ]
  }
  
    forecast = Weather.new(forecast_data)
  
    expect(forecast).to be_a(Weather)
    expect(forecast.datetime).to be_a(String)
    expect(forecast.sunrise).to be_a(String)
    expect(forecast.temperature).to be_a(Float)
    expect(forecast.feels_like).to be_a(Float)
    expect(forecast.humidity).to be_a(Float)
    expect(forecast.uvi).to be_a(Float)
    expect(forecast.conditions).to be_a(String)
    expect(forecast.icon).to be_a(String)
    expect(forecast.daily).to be_a(Array)
    expect(forecast.days).to be_a(Array)
    expect(forecast.hourly).to be_a(Array)
    expect(forecast.hours).to be_a(Array)
  end
end