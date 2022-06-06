lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'filereaderjs/version'

Gem::Specification.new do |spec|
  spec.name          = 'filereaderjs'
  spec.version       = Filereaderjs::VERSION
  spec.authors       = ['Aaron Davis']
  spec.email         = ['aaron@bonus.ly']

  spec.summary       = 'filereaderjs, packaged as a gem'
  spec.homepage      = 'https://github.com/bonusly/filereaderjs'
  spec.license       = 'MIT'

  spec.metadata['allowed_push_host'] = 'https://rubygems.bonusly.dev/private'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.2.18'
  spec.add_development_dependency 'rake', '>= 12.3.3'
end
