$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'emmet_font_awesome/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'emmet_font_awesome'
  s.version     = EmmetFontAwesome::VERSION
  s.authors     = ['Walmir Neto']
  s.email       = ['wfsneto@gmail.com']
  s.homepage    = 'https://github.com/wfsneto/emmet_font_awesome'
  s.summary     = 'Helper for FontAwesome'
  s.description = ''
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '~> 4.2', '>= 4.2.5.1'

  s.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.11'
end
