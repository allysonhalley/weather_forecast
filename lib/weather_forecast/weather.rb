module WeatherForecast

	class  Weather

		attr_reader :city

		def initialize(data)
			begin
				data = JSON.parse(data)
			rescue JSON::JSONError => e
				raise WeatherForecast::Exception::DataError, "error while parsing data: #{e}"
			end
		  @city = WeatherForecast::City.new(data['name'])
		end

	end

end