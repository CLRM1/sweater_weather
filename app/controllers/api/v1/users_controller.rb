require 'securerandom'

class Api::V1::UsersController < ApplicationController

 def create
   params[:api_key] = SecureRandom.urlsafe_base64

   user = User.create(user_params)
   user_data = JSON.parse((user.to_json), symbolize_names: true)

   render json: UserSerializer.format_create_user_response(user_data), status: 201
 end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation, :api_key)
  end
end
