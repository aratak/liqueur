$:.push File.expand_path("../lib", __FILE__)
require "liqueur/version"
# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "liqueur"
  s.summary = "CSS framework"

  s.authors                   = [ "Alexey Osipenko" ]
  s.email                     = [ "alexey@osipenko.in.ua" ]
  s.homepage                  = "http://aratak.github.com/liqueur/"
  s.description = "CSS framework with most used snippets for true cutupping. "
  s.version = Liqueur::VERSION

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency "wiskey", "0.0.5"
  s.add_dependency 'sass', '>= 3.1'
end
