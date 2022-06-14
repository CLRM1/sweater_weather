require 'rails_helper'

RSpec.describe 'Image Facade' do

 it 'returns the image data' do
    image_data = ImageFacade.get_image("denver")
    expect(image_data).to be_a(Image)

    expect(image_data.image_url).to be_a(String)
    expect(image_data.photographer).to be_a(String)
    expect(image_data.photographer_url).to be_a(String)
  end
  
end