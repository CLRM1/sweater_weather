require 'rails_helper'

RSpec.describe 'Sessions API' do

  it 'allows users to log in and returns their API key' do

    headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
      }

    body = {
      "email": "chris@mail.com",
      "password": "password123",
      "password_confirmation": "password123"
      }

    post '/api/v1/users', headers: headers, params: JSON.generate(body)

    headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
      }

    body = {
      "email": "chris@mail.com",
      "password": "password123"
      }

    post '/api/v1/sessions', headers: headers, params: JSON.generate(body)

    response_data = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful

    expect(response_data[:data]).to be_a(Hash)
    expect(response_data[:data][:type]).to eq('users')
    expect(response_data[:data][:id]).to be_a(String)
    expect(response_data[:data][:attributes]).to be_a(Hash)
    expect(response_data[:data][:attributes][:email]).to eq("chris@mail.com")
    expect(response_data[:data][:attributes][:api_key]).to be_a(String)
  end

  it 'returns an error if the password is incorrect' do
    user = User.create!(email: 'chris@mail.com', password: '123', password_confirmation: '123', api_key: "n3zhtreTKr3Veux1Ddmnjw")

    headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
      }

    body = {
      "email": "chris@mail.com",
      "password": "456"
      }

    post '/api/v1/sessions', headers: headers, params: JSON.generate(body)

    response_data = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(400)
  end

  it 'returns an error if the email is incorrect' do
    user = User.create!(email: 'chris@mail.com', password: '123', password_confirmation: '123', api_key: "n3zhtreTKr3Veux1Ddmnjw")

    headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
      }

    body = {
      "email": "john@mail.com",
      "password": "123"
      }

    post '/api/v1/sessions', headers: headers, params: JSON.generate(body)

    response_data = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(400)
  end
end
