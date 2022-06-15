require 'rails_helper'

RSpec.describe 'Trip PORO' do
  it 'exists with the correct attribute' do
    travel_time = "41:28:26"
    trip = Trip.new(travel_time)
    expect(trip).to be_a(Trip)
    expect(trip.travel_time).to be_a(String)
  end 
end