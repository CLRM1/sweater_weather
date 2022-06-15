require 'securerandom'

class User < ApplicationRecord

  validates :email, uniqueness: true, presence: true
  validates :api_key, uniqueness: true, presence: true
  validates_presence_of :password
  validates_presence_of :password_confirmation

  has_secure_password

  def self.generate_api_key
    SecureRandom.urlsafe_base64
  end
end
