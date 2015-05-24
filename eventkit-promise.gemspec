# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eventkit/promise'

Gem::Specification.new do |spec|
  spec.name          = "eventkit-promise"
  spec.version       = Eventkit::Promise::VERSION
  spec.authors       = ["Oliver Martell"]
  spec.email         = ["oliver.martell@gmail.com"]

  spec.summary       = "Promises/A+ for Ruby"
  spec.description   = "Ruby implementation of Promises/A+ https://promisesaplus.com/"
  spec.homepage      = "http://github.com/omartell/eventkit-promise"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2.0"
  spec.add_development_dependency "eventkit-eventloop", "~> 0.1.0"
end
