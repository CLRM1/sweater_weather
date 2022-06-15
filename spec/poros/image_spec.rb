require 'rails_helper'

RSpec.describe 'Image PORO' do
  it 'exists and has the correct attributes' do

    image_data = {
      "page": 1,
      "per_page": 15,
      "photos": [
          {
              "id": 2706750,
              "width": 6240,
              "height": 4160,
              "url": "https://www.pexels.com/photo/union-station-building-2706750/",
              "photographer": "Thomas Ward",
              "photographer_url": "https://www.pexels.com/@thomasleeward",
              "photographer_id": 220769,
              "avg_color": "#777272",
              "src": {
                  "original": "https://images.pexels.com/photos/2706750/pexels-photo-2706750.jpeg",
                  "large2x": "https://images.pexels.com/photos/2706750/pexels-photo-2706750.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                  "large": "https://images.pexels.com/photos/2706750/pexels-photo-2706750.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                  "medium": "https://images.pexels.com/photos/2706750/pexels-photo-2706750.jpeg?auto=compress&cs=tinysrgb&h=350",
                  "small": "https://images.pexels.com/photos/2706750/pexels-photo-2706750.jpeg?auto=compress&cs=tinysrgb&h=130",
                  "portrait": "https://images.pexels.com/photos/2706750/pexels-photo-2706750.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                  "landscape": "https://images.pexels.com/photos/2706750/pexels-photo-2706750.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                  "tiny": "https://images.pexels.com/photos/2706750/pexels-photo-2706750.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
              },
              "liked": false,
              "alt": "Union Station Building"
          },
          {
              "id": 3751010,
              "width": 3712,
              "height": 5568,
              "url": "https://www.pexels.com/photo/red-and-white-concrete-building-during-night-time-3751010/",
              "photographer": "Colin Lloyd",
              "photographer_url": "https://www.pexels.com/@colin-lloyd-2120291",
              "photographer_id": 2120291,
              "avg_color": "#5A4741",
              "src": {
                  "original": "https://images.pexels.com/photos/3751010/pexels-photo-3751010.jpeg",
                  "large2x": "https://images.pexels.com/photos/3751010/pexels-photo-3751010.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                  "large": "https://images.pexels.com/photos/3751010/pexels-photo-3751010.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                  "medium": "https://images.pexels.com/photos/3751010/pexels-photo-3751010.jpeg?auto=compress&cs=tinysrgb&h=350",
                  "small": "https://images.pexels.com/photos/3751010/pexels-photo-3751010.jpeg?auto=compress&cs=tinysrgb&h=130",
                  "portrait": "https://images.pexels.com/photos/3751010/pexels-photo-3751010.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                  "landscape": "https://images.pexels.com/photos/3751010/pexels-photo-3751010.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                  "tiny": "https://images.pexels.com/photos/3751010/pexels-photo-3751010.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
              },
              "liked": false,
              "alt": "Red and White Concrete Building during Night Time"
          },
          {
              "id": 2269617,
              "width": 4000,
              "height": 6000,
              "url": "https://www.pexels.com/photo/concrete-buildings-2269617/",
              "photographer": "Spencer Selover",
              "photographer_url": "https://www.pexels.com/@spencer-selover-142259",
              "photographer_id": 142259,
              "avg_color": "#564F4B",
              "src": {
                  "original": "https://images.pexels.com/photos/2269617/pexels-photo-2269617.jpeg",
                  "large2x": "https://images.pexels.com/photos/2269617/pexels-photo-2269617.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                  "large": "https://images.pexels.com/photos/2269617/pexels-photo-2269617.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                  "medium": "https://images.pexels.com/photos/2269617/pexels-photo-2269617.jpeg?auto=compress&cs=tinysrgb&h=350",
                  "small": "https://images.pexels.com/photos/2269617/pexels-photo-2269617.jpeg?auto=compress&cs=tinysrgb&h=130",
                  "portrait": "https://images.pexels.com/photos/2269617/pexels-photo-2269617.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                  "landscape": "https://images.pexels.com/photos/2269617/pexels-photo-2269617.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                  "tiny": "https://images.pexels.com/photos/2269617/pexels-photo-2269617.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
              },
              "liked": false,
              "alt": "Concrete Buildings"
          }
      ],
      "total_results": 70,
      "next_page": "https://api.pexels.com/v1/search/?page=2&per_page=15&query=denver"
    }

    image = Image.new(image_data)

    expect(image).to be_a(Image)
    expect(image.image_url).to be_a(String)
    expect(image.photographer).to be_a(String)
    expect(image.photographer_url).to be_a(String)
  end
   
end


