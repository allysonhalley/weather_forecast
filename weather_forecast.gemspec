require_relative 'lib/weather_forecast/version'

Gem::Specification.new do |spec|
  spec.name          = "weather_forecast"
  spec.version       = WeatherForecast::VERSION
  spec.authors       = ["Allyson Halley"]
  spec.email         = ["allysonhalley@gmail.com"]

  spec.summary       = "A basic functions for accessing OpenWeatherMap.org"
  spec.description   = "Just created this gem to a job test"
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/allysonhalley/weather_forecast'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata      = { "source_code_uri" => "https://github.com/allysonhalley/weather_forecast" }
#   spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.add_development_dependency "bundler", ">= 1.0.0"
  spec.add_development_dependency "rspec"
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
#   spec.files         = `git ls-files`.split("\n")
#   spec.bindir        = "exe"
  spec.executables   = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  spec.require_paths = ["lib"]
end