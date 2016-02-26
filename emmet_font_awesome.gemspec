$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "emmet_font_awesome/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "emmet_font_awesome"
  s.version     = EmmetFontAwesome::VERSION
  s.authors     = ["Walmir Neto"]
  s.email       = ["wfsneto@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of EmmetFontAwesome."
  s.description = "TODO: Description of EmmetFontAwesome."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.5.1"

  s.add_development_dependency "sqlite3"
end
