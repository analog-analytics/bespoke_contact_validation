# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bespoke_contact_validation/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Daniel Zajic"]
  gem.email         = ["danielzajic@gmail.com"]
  gem.description   = %q{}
  gem.summary       = %q{}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "bespoke_contact_validation"
  gem.require_paths = ["lib"]
  gem.version       = Bespoke::Contact::Validation::VERSION

  gem.add_development_dependency "mocha", "~> 0.12.3"
end
