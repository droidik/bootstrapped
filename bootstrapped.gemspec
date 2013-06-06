# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bootstrapped/version"

Gem::Specification.new do |s|
  s.name        = "bootstrapped"
  s.version     = Bootstrapped::VERSION
  s.authors     = ["Nicholas Watson"]
  s.email       = ["nwwatson@gmail.com"]
  s.homepage    = "http://github.com/entropillc/bootstrapped"
  s.summary     = %q{Twitters Bootstrap CSS in a gem}
  s.description = %q{Twitters Bootstrap CSS and JS files all in one nice little gem}

  s.rubyforge_project = "bootstrapped"
  s.files = Dir["lib/**/*"] + Dir["vendor/**/*"] + ["Rakefile", "README.rdoc"]
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency             'railties',
  s.add_dependency             'actionpack'
  s.add_dependency             'less-rails' unless RUBY_PLATFORM == 'java'  
  s.add_development_dependency 'rails'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'cucumber'
  s.add_development_dependency "bundler"
  s.add_development_dependency "rails"
  
  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").select{|f| f =~ /^bin/}
  s.require_path = 'lib'
end
