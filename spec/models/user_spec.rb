require 'rails_helper'

RSpec.describe User do
  describe 'validations' do
    it {should validate_presence_of(:email)}
    it {should validate_uniqueness_of(:email)}
    it {should validate_presence_of(:api_key)}
    it {should validate_uniqueness_of(:api_key)}
    it {should validate_presence_of(:password)}
  end

  describe 'class methods' do
    it 'generates an api key' do
      api_key = User.generate_api_key
      expect(api_key).to be_a(String)
    end
  end
end
