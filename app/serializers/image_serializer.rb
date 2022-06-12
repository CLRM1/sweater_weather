class ImageSerializer

  def self.format_image_data(image_data)
    {
      data: {
        type: "image",
        id: nil,
        attributes: {
          image: {
            image_url: image_data.image_url,
            photographer: image_data.photographer,
            photographer_url: image_data.photographer_url
          }
        }
      }
    }
  end
end
