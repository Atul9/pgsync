# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pgsync/version"

Gem::Specification.new do |spec|
  spec.name          = "pgsync"
  spec.version       = PgSync::VERSION
  spec.authors       = ["Andrew Kane"]
  spec.email         = ["andrew@chartkick.com"]

  spec.summary       = "Sync Postgres data between databases"
  spec.homepage      = "https://github.com/ankane/pgsync"
  spec.license       = "MIT"

  spec.files         = Dir["README.md", "CHANGELOG.md", "LICENSE.txt", "{exe,lib}/**/*", "config.yml"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "multiprocessing"
  spec.add_dependency "parallel"
  spec.add_dependency "pg"
  spec.add_dependency "slop", ">= 4.2.0"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rake"
end
