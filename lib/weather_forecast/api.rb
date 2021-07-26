require 'weather_forecast'

module WeatherForecast

	class API
		
		def initialize(api_key, lang, units)
		  @api_key = api_key
		  @lang = lang
		  @units = units
		end

		def weather(location)
			url_weather = WeatherForecast::Constants::URLS[:weather]			
			data = make_request(url_weather, location)
			WeatherForecast::Weather.new(data)
		end

		def forecast(location)
			data = make_request(WeatherForecast::Constants::URLS[:forecast], location)
			WeatherForecast::Forecast.new(data)
		end
		

		private

		def make_request(url, location)
			options = {}
			options[:q] = location if location.is_a? String
			options[:id] = location if location.is_a? Integer			

			params = {
				appid: @api_key
			}

			options.merge! params
			# params.merge! options
			
			url = "#{WeatherForecast::Constants::API_URL}/#{url}?#{URI.encode_www_form(options)}"
			
			response = Net::HTTP.get_response(URI(url))
			
			if response.code.to_i == 401
				raise WeatherForecast::Exceptions::Unauthorized, "unauthorized key. API message : #{response.message}"
			elsif response.code.to_i == 404
				raise WeatherForecast::Exceptions::UnknownLocation, "unknown location. API message : #{location}"
			else
				response.body
			end
			
		end

	end

end