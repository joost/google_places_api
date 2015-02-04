# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google_places_api/version'

Gem::Specification.new do |spec|
  spec.name          = "google_places_api"
  spec.version       = GooglePlacesApi::VERSION
  spec.authors       = ["Joost Hietbrink"]
  spec.email         = ["joost@joopp.com"]
  spec.summary       = %q{Super simple Google Places API client.}
  # spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_dependency 'hashie'
  spec.add_dependency 'faraday'
  spec.add_dependency 'faraday_middleware'
end
