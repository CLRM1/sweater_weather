require 'rails_helper'

RSpec.describe 'Road Trip API' do

  it 'returns road trip information in the correct format' do
    user = User.create!(email: 'chris@mail.com', password: '123', password_confirmation: '123', api_key: "n3zhtreTKr3Veux1Ddmnjw")
    
    headers = {
      "Content-Type": "application/json",
      "Accept": "application/json"
    }

    body = {
      "origin": "Denver,CO", 
      "destination": "Pueblo,CO",
      "api_key": "n3zhtreTKr3Veux1Ddmnjw"
    }

    post '/api/v1/road_trip', headers: headers, params: JSON.generate(body)
    
    response_data = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful
    expect(response_data[:data]).to be_a(Hash)
    expect(response_data[:data][:id]).to eq(nil)
    expect(response_data[:data][:type]).to eq('roadtrip')
    expect(response_data[:data][:attributes]).to be_a(Hash)
    expect(response_data[:data][:attributes][:start_city]).to eq('Denver,CO')
    expect(response_data[:data][:attributes][:end_city]).to eq('Pueblo,CO')
    expect(response_data[:data][:attributes][:travel_time]).to eq('01:44:35')
    expect(response_data[:data][:attributes][:weather_at_eta]).to be_a(Hash)
    expect(response_data[:data][:attributes][:weather_at_eta][:temperature]).to be_a(Float)
    expect(response_data[:data][:attributes][:weather_at_eta][:conditions]).to be_a(String)
  end

  it 'returns impossible when their is no route' do
    user = User.create!(email: 'chris@mail.com', password: '123', password_confirmation: '123', api_key: "n3zhtreTKr3Veux1Ddmnjw")
    
    headers = {
      "Content-Type": "application/json",
      "Accept": "application/json"
    }

    body = {
      "origin": "New York, NY", 
      "destination": "London, UK",
      "api_key": "n3zhtreTKr3Veux1Ddmnjw"
    }

    post '/api/v1/road_trip', headers: headers, params: JSON.generate(body)
    
    response_data = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(response_data[:data]).to be_a(Hash)
    expect(response_data[:data][:id]).to eq(nil)
    expect(response_data[:data][:type]).to eq('roadtrip')
    expect(response_data[:data][:attributes]).to be_a(Hash)
    expect(response_data[:data][:attributes][:start_city]).to eq('New York, NY')
    expect(response_data[:data][:attributes][:end_city]).to eq('London, UK')
    expect(response_data[:data][:attributes][:travel_time]).to eq('impossible')
    expect(response_data[:data][:attributes][:weather_at_eta]).to be_a(Array)
  end
end