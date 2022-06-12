class Api::V1::BackgroundsController < ApplicationController
  def show
    image_data = ImageFacade.get_image(params[:location])
    render json: ImageSerializer.format_image_data(image_data)
  end
end
