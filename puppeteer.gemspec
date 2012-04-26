# -*- encoding: utf-8 -*-
require File.expand_path('../lib/puppeteer/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["AbhishekKr"]
  gem.email         = ["abhikumar163@gmail.com"]
  gem.description   = %q{Puppeteer is there to ease out Puppet-izing the infrastructure.}
  gem.summary       = %q{Puppeteer has been started to: ease [Puppet Configuration], [CRUD of puppet-modules-parts], [...] ~~~~~ https://raw.github.com/abhishekkr/rubygem_puppeteer/master/README}
  gem.homepage      = "https://github.com/abhishekkr/rubygem_puppeteer"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "puppeteer"
  gem.require_paths = ["lib"]
  gem.version       = Puppeteer::VERSION
end
