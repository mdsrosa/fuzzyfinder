Gem::Specification.new do |spec|
  spec.name          = "fuzzyfinder"
  spec.version       = "0.0.3"
  spec.date          = "2015-10-06"
  spec.summary       = "Fuzzy Finder"
  spec.description   = "Matches partial string entries from a list of strings."
  spec.authors       = ["Matheus Rosa"]
  spec.email         = "matheusdsrosa@gmail.com"
  spec.homepage      = "https://rubygems.org/gems/fuzzyfinder"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler",   "~> 1.7"
  spec.add_development_dependency 'rspec', '~> 3.0', '>= 3.0.0'
end
