require 'securerandom'
require 'active_support/duration'

class Api::V1::UsersController < ApplicationController

  def create
    params[:api_key] = SecureRandom.urlsafe_base64

    user = User.create(user_params)
    user_data = JSON.parse((user.to_json), symbolize_names: true)

    render json: UserSerializer.format_create_user_response(user_data), status: 201
  end

  def login
    user = User.find_by(email: params[:email])

    if user.authenticate(params[:password])
      render json: UserSerializer.format_login_response(user)
    else
      render json: {data: {error: "Error: Incorrect password or email"}}, status: 400
    end
  end

  def trip
    # require 'pry'; binding.pry
    user = User.find_by(api_key: params[:api_key])

    if user
      origin_coordinates = MapsFacade.get_coordinates(params[:origin])
      destination_coordinates = MapsFacade.get_coordinates(params[:destination])
      directions = MapsFacade.get_directions(params[:origin], params[:destination])
      forecast = WeatherFacade.get_forecast(destination_coordinates)
      
      # require 'pry'; binding.pry
      # travel_time = ActiveSupport::Duration.build(directions[:route][:legs][0][:formattedTime]).parts
      travel_time = directions[:route][:legs][0][:formattedTime]
      

      render json: TripSerializer.format_trip(travel_time, params[:origin], params[:destination], forecast)
    else
      render json: {data: "Error: API key not found"}, status: 401
    end
  end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation, :api_key)
  end
end
