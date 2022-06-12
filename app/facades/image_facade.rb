class ImageFacade

  def self.get_image(city)
    image_data = ImageService.get_image(city)

    Image.new(image_data)
  end
end
