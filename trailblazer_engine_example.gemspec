$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'trailblazer_engine_example/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'trailblazer_engine_example'
  s.version     = TrailblazerEngineExample::VERSION
  s.authors     = ['Erik Axel Nielsen']
  s.email       = ['erikaxel.nielsen@gmail.com']
  s.homepage    = 'https://github.com/erikaxel/trailblazer_engine_example'
  s.summary     = 'Example of using Trailblazer with a Rails Engine.'
  s.description = 'Example of using Trailblazer with a Rails Engine'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '~> 4.2.5'

  s.add_development_dependency 'trailblazer'
  s.add_development_dependency 'trailblazer-rails'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'simple_form'
end
