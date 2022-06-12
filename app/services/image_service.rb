class ImageService

  def self.get_image(city)

    conn = Faraday.new(
      url: "https://api.pexels.com/v1/search?query=#{city}",
      headers: {"Authorization" => ENV['pexel_api_key']})

    response = conn.get

    JSON.parse(response.body, symbolize_names: true)
  end
end
