# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "devmail"
  s.summary = "Interceptor for emails sent in development for Rails 3"
  s.description = "Stores all emails sent in development in a mongodb database and presents a clean interface for viewing them."
  s.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.rdoc"]
  s.version = "0.0.1"

  s.authors     = ["Grzesiek Kołodziejczyk"]
  s.email       = ["gkolodziejczyk@gmail.com"]
  s.homepage    = "https://github.com/grk/devmail/"

  s.add_dependency "rails", ">= 3.0.0"
  s.add_dependency "mongoid", ">= 2.0"
  s.add_dependency "bson_ext", ">= 1.3"

  s.add_development_dependency "rspec-rails", ">= 2.5.0"
  s.add_development_dependency "capybara", ">= 0.4.0"
end
