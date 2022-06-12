class UserSerializer
  def self.format_create_user_response(user_data)
    {
      data: {
        type: "users",
        id: user_data[:id],
        attributes: {
          email: user_data[:email],
          api_key: user_data[:api_key]
        }
      }
    }
  end
end
