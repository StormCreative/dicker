# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dicker/version'

Gem::Specification.new do |spec|
  spec.name          = "dicker"
  spec.version       = Dicker::VERSION
  spec.authors       = ["Ashley Banks"]
  spec.email         = ["ashleysmbanks89@gmail.com"]
  spec.description   = "Internal Gem"
  spec.summary       = "Creates static and general sites"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
