$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'commander/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'commander'
  s.version     = Commander::VERSION
  s.authors     = ['Maciej Litwiniuk']
  s.email       = ['maciej@litwiniuk.net']
  s.homepage    = 'https://prograils.com/'
  s.summary     = 'File manager. Well, uploader for now'
  s.description = 'Missing solution for easy uploading files to server.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'rails', '~> 4.2.5.1'
  s.add_dependency 'carrierwave'
  s.add_dependency 'sass-rails'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'jquery-fileupload-rails'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
end
