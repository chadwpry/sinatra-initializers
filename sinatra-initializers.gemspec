# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sinatra-initializers}
  s.version = "0.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chad W Pry"]
  s.date = %q{2011-09-29}
  s.description = %q{Rails like initialization}
  s.email = %q{chad.pry@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "CHANGES",
     "LICENSE",
     "README.rdoc",
     "VERSION",
     "lib/sinatra-initializers.rb",
     "lib/sinatra-initializers/version.rb",
     "sinatra-initializers.gemspec",
     "Gemfile",
     "Rakefile"
  ]
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.homepage = %q{http://github.com/chadwpry/sinatra-initializers}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A Sinatra Extension that follows a pattern of rails initializers}
  
  s.add_development_dependency('sinatra')
  s.add_development_dependency('rake')
  s.add_development_dependency('rspec')
end

