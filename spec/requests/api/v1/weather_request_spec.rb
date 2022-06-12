require 'rails_helper'

RSpec.describe 'Weather Forecast API' do

  it 'can get the current weather for a city' do

    get '/api/v1/forecast?location=denver,co'

    body = JSON.parse(response.body, symbolize_names: true)
    forecast = body[:data]
    current_weather = forecast[:attributes][:current_weather]

    expect(response).to be_successful

    expect(body).to be_a(Hash)
    expect(forecast).to be_a(Hash)
    expect(forecast[:id]).to be(nil)
    expect(forecast[:type]).to eq('forecast')

    expect(current_weather[:datetime]).to be_a(String)
    expect(current_weather[:sunrise]).to be_a(String)
    expect(current_weather[:sunset]).to be_a(String)
    expect(current_weather[:temperature]).to be_a(Float)
    expect(current_weather[:feels_like]).to be_a(Float)
    expect(current_weather[:humidity]).to be_a(Float)
    expect(current_weather[:uvi]).to be_a(Float)
    expect(current_weather[:visibility]).to be_a(Float)
    expect(current_weather[:conditions]).to be_a(String)
    expect(current_weather[:icon]).to be_a(String)

  end

  it 'can get the daily weather for the next 5 days for a city' do

    get '/api/v1/forecast?location=denver,co'

    body = JSON.parse(response.body, symbolize_names: true)
    forecast = body[:data]
    daily_weather = forecast[:attributes][:daily_weather]

    expect(response).to be_successful

    expect(daily_weather[0][:date]).to be_a(String)
    expect(daily_weather[0][:sunrise]).to be_a(String)
    expect(daily_weather[0][:sunset]).to be_a(String)
    expect(daily_weather[0][:max_temp]).to be_a(Float)
    expect(daily_weather[0][:min_temp]).to be_a(Float)
    expect(daily_weather[0][:conditions]).to be_a(String)
    expect(daily_weather[0][:icon]).to be_a(String)

  end

  it 'can get the hourly weather for a city' do

    get '/api/v1/forecast?location=denver,co'

    body = JSON.parse(response.body, symbolize_names: true)
    forecast = body[:data]
    hourly_weather = forecast[:attributes][:hourly_weather]

    expect(response).to be_successful

    expect(hourly_weather[0][:time]).to be_a(String)
    expect(hourly_weather[0][:temperature]).to be_a(Float)
    expect(hourly_weather[0][:conditions]).to be_a(String)
    expect(hourly_weather[0][:icon]).to be_a(String)

  end
end
