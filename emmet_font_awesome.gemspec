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

  s.add_dependency 'railties', '~> 4.2', '>= 4.2.5.1'

  s.add_development_dependency 'rspec-rails', '~> 3.4', '>= 3.4.2'
  s.add_development_dependency 'shoulda-matchers', '~> 3.1', '>= 3.1.1'
  s.add_development_dependency 'factory_girl_rails', '~> 4.6'
end
