class Api::V1::BackgroundsController < ApplicationController
  def show
    require 'pry'; binding.pry
    city = params[:location].split(',').first
    image_data = ImageFacade.get_image(city)
    render json: ImageSerializer.format_image_data(image_data)
  end
end
