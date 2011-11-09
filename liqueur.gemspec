# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "liqueur"
  s.summary = "CSS framework"

  s.authors                   = [ "Alexey Osipenko" ]
  s.email                     = [ "alexey@osipenko.in.ua" ]
  s.homepage                  = "http://aratak.github.com/liqueur/"
  s.description = "CSS framework."
  s.files = `git ls-files`.split("\n")
  s.version = "0.0.2"

  s.add_dependency "wiskey"
  s.add_dependency "rails"         , "~> 3.1.0"

end
