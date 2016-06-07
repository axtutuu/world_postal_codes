# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'postcodes/version'

Gem::Specification.new do |spec|
  spec.name          = "postcodes"
  spec.version       = Postcodes::VERSION
  spec.authors       = ["kawasaki-atsushi"]
  spec.email         = ["kawasaki8910@gmail.com"]

  spec.summary       = %s(Simple gem to get city for a given Japan post codes.)
  spec.description   = %s(Gem to identify zip codes inside Japan)
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubyzip"
  spec.add_dependency "pry"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

end
