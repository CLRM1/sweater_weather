require 'rails_helper'

RSpec.describe 'Image API' do
  
  it "returns an image and it's data based on the location search" do
    get '/api/v1/backgrounds?location=denver,co'
    
    body = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful
    expect(body[:data]).to be_a(Hash)
    expect(body[:data][:type]).to eq('image')
    expect(body[:data][:id]).to eq(nil)
    expect(body[:data][:attributes]).to be_a(Hash)
    expect(body[:data][:attributes][:image]).to be_a(Hash)
    expect(body[:data][:attributes][:image][:photographer]).to be_a(String)
    expect(body[:data][:attributes][:image][:photographer_url]).to be_a(String)
  end

  it 'does not return other data included in the response from the image API provider' do
    get '/api/v1/backgrounds?location=denver,co'

    body = JSON.parse(response.body, symbolize_names: true)
  
    expect(body[:data]).to_not have_key(:page)
    expect(body[:data]).to_not have_key(:per_page)
    expect(body[:data]).to_not have_key(:photo)
    expect(body[:data]).to_not have_key(:width)
    expect(body[:data]).to_not have_key(:next_page)
  end
end