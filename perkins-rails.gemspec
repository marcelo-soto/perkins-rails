# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'perkins/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "perkins-rails"
  spec.version       = Perkins::Rails::VERSION
  spec.authors       = ["Marcelo Soto Montes"]
  spec.email         = ["hola@marcelosoto.cl"]
  spec.summary       = "Rails Gem for Perkins"
  spec.description   = "The Rails Gem for Perkins"
  spec.homepage      = "https://github.com/marcelo-soto/perkins-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib", "assets"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "less-rails", "~> 2.6"
end
