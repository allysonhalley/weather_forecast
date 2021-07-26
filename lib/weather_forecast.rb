require 'net/http'
require 'json'

require 'weather_forecast/version'
require 'weather_forecast/api'
require 'weather_forecast/weather'
require 'weather_forecast/forecast'
require 'weather_forecast/classes'



module WeatherForecast
	
	module Constants
		API_URL = "https://api.openweathermap.org"

		URLS = {
			weather: '/data/2.5/weather',
			forecast: '/data/2.5/forecast'
		}

		CONDITION_CODE = {
			'01d' => '☀',
			'02d' => '⛅',
			'03d' => '☁',
			'04d' => '☁☁',
			'09d' => '🌧',
			'10d' => '🌦',
			'11d' => '🌩',
			'13d' => '🌨',
			'50d' => '🌫',
		  }

	end	

	class Exception < StandardError
	end

	module Exceptions	

		# Exception to handle unknown location
		class UnknownLocation < WeatherForecast::Exception
		end

		# Exception to data error in PARSE
		class DataError < WeatherForecast::Exception
		end

	end
# Your code goes here...
end
