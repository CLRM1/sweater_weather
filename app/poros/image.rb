class Image
  attr_reader :image_url, :photographer, :photographer_url
  def initialize(image_data)
    @image_url = image_data[:photos][0][:src][:original]
    @photographer = image_data[:photos][0][:photographer]
    @photographer_url = image_data[:photos][0][:photographer_url]
  end
end
