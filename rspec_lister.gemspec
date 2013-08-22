# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec_lister/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec_lister"
  spec.version       = RspecLister::VERSION
  spec.authors       = ["Anthony Panozzo"]
  spec.email         = ["panozzaj@gmail.com"]
  spec.description   = %q{Lists RSpec specs in your project}
  spec.summary       = %q{Lists RSpec specs in your project}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_dependency 'rspec'
end
