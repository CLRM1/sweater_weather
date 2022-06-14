require 'rails_helper'

RSpec.describe 'Users API' do

  it 'creates a user and returns their api key' do

    headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
      }

    body = {
      "email": "chris22@mail.com",
      "password": "password123",
      "password_confirmation": "password123"
      }

    post '/api/v1/users', headers: headers, params: JSON.generate(body)

    response_data = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(201)

    expect(response_data[:data]).to be_a(Hash)
    expect(response_data[:data][:type]).to eq('users')
    expect(response_data[:data][:id]).to be_a(Integer)
    expect(response_data[:data][:attributes]).to be_a(Hash)
    expect(response_data[:data][:attributes][:email]).to eq("chris22@mail.com")
    expect(response_data[:data][:attributes][:api_key]).to be_a(String)
  end
end