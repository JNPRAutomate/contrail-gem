# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'contrail/version'

Gem::Specification.new do |spec|
  spec.name          = "contrail"
  spec.version       = Contrail::VERSION
  spec.authors       = ["John Deatherage"]
  spec.email         = ["jdeatherage@juniper.net"]
  spec.summary       = 'REST API binding for OpenContrail and Contrail'
  spec.description   = 'REST API binding for OpenContrail and Contrail'
  spec.homepage      = 'https://github.com/JNPRAutomate/'
  spec.license       = 'Apache-2.0'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
