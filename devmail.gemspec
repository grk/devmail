$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "devmail/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "devmail"
  s.version     = Devmail::VERSION
  s.authors     = ["Grzesiek Kolodziejczyk"]
  s.email       = ["gk@code-fu.pl"]
  s.homepage    = "https://github.com/grk/devmail"
  s.summary     = "Intercepts and displays mails sent in development"
  s.description = "Intercepts and displays mails sent in development"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1"
end
