class Api::V1::ForecastController < ApplicationController
  def show
    coordinates = MapsFacade.get_coordinates(params[:location])
    forecast = WeatherFacade.get_forecast(coordinates)
    render json: WeatherSerializer.format_forecast(forecast)
  end
end
