$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "supportify/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "supportify"
  s.version     = Supportify::VERSION
  s.authors     = ["joshblour"]
  s.email       = ["joshblour@hotmail.com"]
  s.homepage    = "http://www.github.com/joshblour/supportify"
  s.summary     = "basic CMS "
  s.description = "rails engine to add a very basic cms to an app"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.0.2"
  s.add_dependency 'cancan'
	s.add_dependency 'simple_form'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'carrierwave'
  s.add_dependency "mini_magick"
  
  s.add_dependency "fog", ">= 1.3.1"
  s.add_dependency "ckeditor"
  s.add_dependency 'acts-as-taggable-on', '>= 3.0.1'
  s.add_dependency "select2-rails"
  s.add_dependency 'pg'
  s.add_dependency 'geocoder'
  s.add_dependency 'pg_search'
  s.add_dependency "non-stupid-digest-assets"
  
  
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'database_cleaner'

end
