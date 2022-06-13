class Api::V1::BooksController < ApplicationController

  def index
    coordinates = MapsFacade.get_coordinates(params[:location])
    forecast = WeatherFacade.get_forecast(coordinates)
    books = BooksFacade.get_books(params[:location], params[:quantity])
    books_response = BooksSerializer.format_books_response(forecast, books, params[:location], params[:quantity])
    render json: books_response, status: 201
  end
end
