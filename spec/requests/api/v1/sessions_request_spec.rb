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


    # require 'pry'; binding.pry
    expect(response_data[:data]).to be_a(Hash)
    expect(response_data[:data][:type]).to eq('users')
    expect(response_data[:data][:id]).to be_a(String)
    expect(response_data[:data][:attributes]).to be_a(Hash)
    expect(response_data[:data][:attributes][:email]).to eq("chris@mail.com")
    expect(response_data[:data][:attributes][:api_key]).to be_a(String)
  end
end



# status: 200
# body:
#
# {
#   "data": {
#     "type": "users",
#     "id": "1",
#     "attributes": {
#       "email": "whatever@example.com",
#       "api_key": "jgn983hy48thw9begh98h4539h4"
#     }
#   }
# }


# POST /api/v1/sessions
# Content-Type: application/json
# Accept: application/json
#
# {
#   "email": "whatever@example.com",
#   "password": "password"
# }
