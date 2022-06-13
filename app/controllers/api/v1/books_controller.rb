class Api::V1::BooksController < ApplicationController

  def index
    # require 'pry'; binding.pry
    coordinates = MapsFacade.get_coordinates(params[:location])
    forecast = WeatherFacade.get_forecast(coordinates)
    books = BooksFacade.get_books(params[:location])
    books_response = BooksResponseSerializer.format_books_response(forecast, books, params[:location])
  end
end
