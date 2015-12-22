# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'envly/version'

Gem::Specification.new do |spec|
  spec.name          = 'envly'
  spec.version       = Envly::VERSION
  spec.authors       = ['Christopher EnyTC']
  spec.email         = ['chris@enytc.com']

  spec.summary       = 'Manage sensitive environment variables.'
  spec.description   = 'Manage sensitive environment variables in your development environment.'
  spec.homepage      = 'https://github.com/chrisenytc/envly'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'musa', '~> 0.1'
  spec.add_runtime_dependency 'dotenv', '~> 2.0'
  spec.add_runtime_dependency 'commander', '~> 4.3'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'faker', '~> 1.6'
end
