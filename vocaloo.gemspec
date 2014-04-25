# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vocaloo/version'

Gem::Specification.new do |spec|
  spec.name          = "vocaloo"
  spec.version       = Vocaloo::VERSION
  spec.authors       = ["Donn Pebe"]
  spec.email         = ["thedonnpe@gmail.com"]
  spec.description   = "Make string more expresive and fun"
  spec.summary       = %q{Extends ruby "String" class with some silly methods to
  make string more expresive and fun}
  spec.homepage      = "https://github.com/donnpebe/vocaloo"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "2.14.1"
  spec.add_development_dependency "rspec-nc", "~> 0.0.6"
  spec.add_development_dependency "guard", "2.6.0"
  spec.add_development_dependency "guard-rspec", "4.2.8"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-nav"
  spec.add_development_dependency "coveralls"
end
