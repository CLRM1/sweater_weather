require 'securerandom'

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
  private

  def user_params
    params.permit(:email, :password, :password_confirmation, :api_key)
  end
end
