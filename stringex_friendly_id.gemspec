# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stringex_friendly_id/version'

Gem::Specification.new do |gem|
  gem.name          = "stringex_friendly_id"
  gem.version       = StringexFriendlyId::VERSION
  gem.authors       = ["Lasse Bunk"]
  gem.email         = ["lassebunk@gmail.com"]
  gem.description   = %q{StringexFriendlyId is a gem for using Stringex's ingenious unicode transliterations with FriendlyId's slugging magic.}
  gem.summary       = %q{Stringex transliterations combined with FriendlyId slugging functionality.}
  gem.homepage      = "https://github.com/lassebunk/stringex_friendly_id"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^test/})
  gem.require_paths = ["lib"]

  gem.add_dependency "friendly_id"
  gem.add_dependency "stringex"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "activerecord", ">= 3.0.0"
  gem.add_development_dependency "sqlite3"
end
