require 'forecast_io'
require 'geocoder'

ForecastIO.api_key = '9f9af152a82e8a7a10d42d4e1348b724' #



def current_weather(location)

  # This sets coordinates and checks to see if it is true (aka not nill). That's neat!
  if coordinates = Geocoder.coordinates(location)
    address = Geocoder.address(location)
    forecast = ForecastIO.forecast(coordinates[0],coordinates[1]).currently
    "It is #{forecast.summary.downcase} and #{forecast.temperature}°F (#{address})"
  else
    "Location not found."
  end
end
