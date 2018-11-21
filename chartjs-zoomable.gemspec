$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "chartjs/zoomable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "chartjs-zoomable"
  s.version     = Chartjs::Zoomable::VERSION
  s.authors     = ['Mateusz Michalski']
  s.email       = ['nytorian@icloud.com']
  s.homepage    = "https://github.com/Nytorian/chartjs-zoomable"
  s.summary     = 'Simplifies usage of Chart.js in Rails views with zoom and pan plugin!'
  s.description = 'chartjs-zoomable lets you use Chartjs graphs using helper methods in your views with zoom and pan functionality'
  s.license     = 'MIT'

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1"
  s.add_dependency 'rails-assets-chartjs'

  s.add_development_dependency "sqlite3"
end
