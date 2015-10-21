$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "iuris/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "iuris_core"
  s.version     = Iuris::Core::VERSION
  s.authors     = ["pittuxx"]
  s.email       = ["pittuxx@gmail.com"]
  s.homepage    = "https://github.com/pittuxx"
  s.summary     = "Core features of iurisCRM."
  s.description = "Core features of iurisCRM."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  #s.test_files = Dir[""]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.2.4"
  s.add_dependency "sass-rails", "~> 5.0.4"
  s.add_dependency "bootstrap-sass", "~> 3.3.3"
  s.add_dependency "autoprefixer-rails", "~> 6.0.2"
  s.add_dependency "devise", "~> 3.5.2"
  s.add_dependency "cancancan", "~> 1.10"
  s.add_dependency 'jquery-rails'
  s.add_dependency 'turbolinks'

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "faker"
  s.add_development_dependency "database_cleaner"

end
