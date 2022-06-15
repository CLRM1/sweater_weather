require 'securerandom'
require 'active_support/duration'

class Api::V1::UsersController < ApplicationController

  def create
    if params[:password] == params[:password_confirmation] && User.find_by(email: params[:email]) == nil
      params[:api_key] = SecureRandom.urlsafe_base64
      user = User.create(user_params)
      user_data = JSON.parse((user.to_json), symbolize_names: true)

      render json: UserSerializer.format_create_user_response(user_data), status: 201
    elsif User.find_by(email: params[:email])
      render json: {data: "Error: email already taken"}, status: 400
    else
      render json: {data: "Error: passwords do not match"}, status: 400
    end
  end

  def login
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      render json: UserSerializer.format_login_response(user)
    else
      render json: {data: {error: "Error: Incorrect password or email"}}, status: 400
    end
  end

  def trip
    user = User.find_by(api_key: params[:api_key])
    origin_coordinates = MapsFacade.get_coordinates(params[:origin])
    destination_coordinates = MapsFacade.get_coordinates(params[:destination])
    impossible = MapsFacade.get_directions(params[:origin], params[:destination])[:info][:messages]
    
    if params[:api_key] == nil
      render json: {data: "Error: API key not found"}, status: 401 
    elsif user && impossible == []
      directions = MapsFacade.get_directions(params[:origin], params[:destination])
      forecast = WeatherFacade.get_forecast(destination_coordinates)
      travel_time = directions[:route][:legs][0][:formattedTime]
      render json: TripSerializer.format_trip(travel_time, params[:origin], params[:destination], forecast)
    elsif impossible.count > 0
      render json: TripSerializer.format_impossible_trip(params[:origin], params[:destination]), status: 201
    end
  end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation, :api_key)
  end
end
