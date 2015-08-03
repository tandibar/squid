lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'squid/version'

Gem::Specification.new do |spec|
  spec.name          = 'squid'
  spec.version       = Squid::VERSION
  spec.authors       = ['claudiob']
  spec.email         = ['claudiob@gmail.com']

  spec.summary       = %q{Generates graphs in PDF files.}
  spec.description   = %q{Squid expands Prawn providing method to easily draw graphs in PDF files.}
  spec.homepage      = 'https://github.com/fullscreen/squid'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency             'prawn', '~> 2.0'
  spec.add_development_dependency 'pdf-inspector', '~> 1.2'
  spec.add_development_dependency 'prawn-manual_builder', '~> 0.2.0'
  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'coveralls', '~> 0.8.2'
  spec.add_development_dependency 'pry-nav', '~> 0.2.4'
end