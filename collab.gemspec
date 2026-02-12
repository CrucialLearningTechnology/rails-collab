# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'collab/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name          = 'collab'
  spec.version       = Collab::VERSION
  spec.authors       = ['Ben Aubin']
  spec.email         = ['ben@benaubin.com']

  spec.summary       = 'Collaborative editing on Rails.'
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = 'https://github.com/benaubin/rails-collab'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.0.6')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/benaubin/rails-collab'
  spec.metadata['changelog_uri'] = 'https://github.com/benaubin/rails-collab/blob/master/CHANGELOG.md'

  spec.files = Dir['{app,config,db,lib}/**/*', 'Rakefile']

  spec.add_dependency 'rails', '~> 7.1.0'
  spec.add_dependency 'faraday', '~> 2.14.1'
  spec.add_dependency 'faraday-retry', '~> 2.2'
  # Note: Faraday 2 no longer uses `faraday_middleware` (which is Faraday 1.x only).
  # Keep middleware usage minimal and rely on Faraday core + `faraday-retry`.

  # allow for adapter of choice
  # spec.add_dependency 'faraday-httpclient', '~> 1.0.1'
  # spec.add_dependency 'faraday-net_http', '~> 1.0.1'
  # spec.add_dependency 'faraday-net_http_persistent', '~> 1.2.0'
  # spec.add_dependency 'net-http-persistent', '~> 4.0.1'
  # spec.add_dependency 'faraday-em_http', '~> 1.0.0'

  spec.add_development_dependency 'puma'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'webpacker'
end
