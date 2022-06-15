class Api::V1::UsersController < ApplicationController

  def create
    if params[:password] == params[:password_confirmation] && User.find_by(email: params[:email]) == nil
      params[:api_key] = User.generate_api_key
      user = User.create(user_params)
      render json: UserSerializer.format_create_user_response(user), status: 201
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
    destination_coordinates = MapsFacade.get_coordinates(params[:destination])
    impossible = MapsFacade.get_directions(params[:origin], params[:destination])[:info][:messages]
    forecast = WeatherFacade.get_forecast(destination_coordinates)
    
    if params[:api_key] == nil || User.find_by(api_key: params[:api_key]) == nil
      render json: {data: "Error: API key not found"}, status: 401 
    elsif User.find_by(api_key: params[:api_key]) && impossible == []
      travel_time = MapsFacade.get_directions(params[:origin], params[:destination])[:route][:legs][0][:formattedTime]
      render json: TripSerializer.format_trip(travel_time, params[:origin], params[:destination], forecast)
    elsif impossible.count > 0
      render json: TripSerializer.format_impossible_trip(params[:origin], params[:destination]), status: 200
    end
  end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation, :api_key)
  end
end
