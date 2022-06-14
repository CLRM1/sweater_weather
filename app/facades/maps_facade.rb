class MapsFacade

  def self.get_coordinates(location)
    coordinates = MapsService.get_coordinates(location)
    lat = coordinates[:results][0][:locations][0][:latLng][:lat]
    long = coordinates[:results][0][:locations][0][:latLng][:lng]
    [lat,long]
  end

  def self.get_directions(origin, destination)
    MapsService.get_directions(origin, destination)
  end

end
