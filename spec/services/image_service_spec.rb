require 'rails_helper'

RSpec.describe 'Image Service' do
  it 'returns an image url based on a search' do
    location = 'denver'
    image_data = ImageService.get_image(location)
    expect(image_data).to be_a(Hash)
    expect(image_data[:photos][0][:url]).to be_a(String)
  end
end