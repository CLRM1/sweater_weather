class Api::V1::UsersController < ApplicationController

 def create
   User.create(user_params)
   require 'pry'; binding.pry
 end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation, :api_key)
  end
end
