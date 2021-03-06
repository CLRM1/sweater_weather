class UserSerializer
  def self.format_create_user_response(user_data)
    {
      data: {
        type: "users",
        id: user_data.id.to_s,
        attributes: {
          email: user_data.email,
          api_key: user_data.api_key
        }
      }
    }
  end

  def self.format_login_response(user)
    {
      data: {
        type: "users",
        id: user.id.to_s,
        attributes:{
          email: user.email,
          api_key: user.api_key
        }
      }
    }
  end
end
