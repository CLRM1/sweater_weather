class MapsService

  def self.get_coordinates(location)
    conn = Faraday.new(url: "http://www.mapquestapi.com/geocoding/v1/address")
    response = conn.get("?key=#{ENV['mapquest_api_key']}&location=#{location}")

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_directions(origin, destination)
    conn = Faraday.new(url: "http://open.mapquestapi.com/directions/v2/route")
    response = conn.get("?key=#{ENV['mapquest_api_key']}&from=#{origin}&to=#{destination}")
    # require 'pry'; binding.pry
    JSON.parse(response.body, symbolize_names: true)
  end

end
