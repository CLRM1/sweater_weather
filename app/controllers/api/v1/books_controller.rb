class Api::V1::BooksController < ApplicationController

  def index
    coordinates = MapsFacade.get_coordinates(params[:location])
    forecast = WeatherFacade.get_forecast(coordinates)
    books = BooksFacade.get_books(params[:location], params[:quantity])
    books_response = BooksSerializer.format_books_response(forecast, books, params[:location], params[:quantity])
    if positive?(params[:quantity].to_i)
      render json: books_response, status: 201
    else
      render json: "Quantity must be positive", status: 400
    end
  end
end
