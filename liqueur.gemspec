# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "liqueur"
  s.summary = "CSS framework"

  s.authors                   = [ "Alexey Osipenko" ]
  s.email                     = [ "alexey@osipenko.in.ua" ]
  s.homepage                  = "http://liqueur.github.com"
  s.description = "CSS framework."
  s.files = `git ls-files`.split("\n")
  s.version = "0.0.1"
end
