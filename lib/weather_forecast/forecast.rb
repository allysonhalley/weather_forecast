module WeatherForecast

	class Forecast

		attr_reader :city

		attr_reader :forecast

		def initialize(data)
		  begin
			data = JSON.parse(data)
		  rescue JSON::JSONError => e
			raise WeatherForecast::Exception::DataError, "error shile parsing data: #{e}"
		  end
		  @city = WeatherForecast::City.new(data['city']['name'])
		  @forecast = []		  
		end

	end


end