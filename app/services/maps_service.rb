class MapsService

  def self.get_coordinates(location)
    conn = Faraday.new(url: "http://www.mapquestapi.com/geocoding/v1/address")
    response = conn.get("?key=#{ENV['mapquest_api_key']}&location=#{location}")

    JSON.parse(response.body, symbolize_names: true)
  end
end
