require 'spec_helper'
require 'weather_forecast/api'
require 'weather_forecast/classes'

RSpec.describe WeatherForecast do


	it 'has a valid city name' do
		city = WeatherForecast::City.new("London")
		expect(city.name).to eq('London')
	end

	it "api keeps api_key" do
		lang = 'pt'
		units = 'metric'
		api_key = ''
		api = WeatherForecast::API.new(api_key, lang, units)		
		expect(api == '')
	end

	it "has a valid URL weather" do
		lang = 'pt'
		units = 'metric'
		location = 'London'
		api_key = ''
		api = WeatherForecast::API.new(api_key, lang, units)
		weather = api.weather(location)
		expect(weather.city.name).to eq("London") 
	end

	it "has a valid URL forecast" do
		lang = 'pt'
		units = 'metric'
		location = 'London'
		api_key = ''
		api = WeatherForecast::API.new(api_key, lang, units)
		forecast = api.forecast(location)
		puts forecast.inspect
		expect(forecast.city.name).to eq("London") 
	end

end
