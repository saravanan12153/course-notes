# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_craps/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_craps"
  spec.version       = SimpleCraps::VERSION
  spec.authors       = ["Chris Vannoy"]
  spec.email         = ["chris.vannoy@theironyard.com"]

  spec.summary       = %q{Play craps on your command line.}
  spec.description   = %q{Brought to you by the Indianapolis June 2015 Ruby Cohort of The Iron Yard.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ["craps"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
