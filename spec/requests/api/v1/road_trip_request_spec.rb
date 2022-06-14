require 'rails_helper'

RSpec.describe 'Road Trip API' do
  #     POST /api/v1/road_trip
  # Content-Type: application/json
  # Accept: application/json
  
  # body:
  
  # {
  #   "origin": "Denver,CO",
  #   "destination": "Pueblo,CO",
  #   "api_key": "jgn983hy48thw9begh98h4539h4"
  # }

  it 'returns road trip information in the correct format' do
    
    post '/api/v1/road_trip'
    
  end
end