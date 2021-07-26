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
		api_key = 'ff7437681d61d0072006e4fe5ca27c9f'
		api = WeatherForecast::API.new(api_key, lang, units)		
		expect(api == 'ff7437681d61d0072006e4fe5ca27c9f')
	end

	it "has a valid URL weather" do
		lang = 'pt'
		units = 'metric'
		url_api = 'https://api.openweathermap.org/data/2.5/weather?q=london&appid=ff7437681d61d0072006e4fe5ca27c9f'
		location = 'London'
		api_key = 'ff7437681d61d0072006e4fe5ca27c9f'
		api = WeatherForecast::API.new(api_key, lang, units)
		weather = api.weather(location)
		puts weather.inspect
		expect(weather.city.name).to eq("London") 
	end

	it "has a valid URL forecast" do
		lang = 'pt'
		units = 'metric'
		url_api = 'https://api.openweathermap.org/data/2.5/weather?q=london&appid=ff7437681d61d0072006e4fe5ca27c9f'
		location = 'London'
		api_key = 'ff7437681d61d0072006e4fe5ca27c9f'
		api = WeatherForecast::API.new(api_key, lang, units)
		weather = api.forecast(location)
		puts weather.inspect
		expect(weather.city.name).to eq("London") 
	end

end
