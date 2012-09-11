# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'puppeteer/version'

Gem::Specification.new do |gem|
  gem.name          = "puppeteer"
  gem.version       = Puppeteer::VERSION
  gem.authors       = ["abhishekkr"]
  gem.email         = ["abhikumar163@gmail.com"]
  gem.homepage      = "https://github.com/abhishekkr/rubygem_puppeteer"
  gem.summary       = %q{Puppeteer has been started to: ease [Puppet Configuration], [CRUD of puppet-modules-parts], [...] ~~~~~ https://raw.github.com/abhishekkr/rubygem_puppeteer/master/README}
  gem.description   = %q{Puppeteer is there to ease out Puppet-izing the infrastructure. Automate the automation development.}

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ["lib"]

  gem.executables   = %w( puppeteer )
end
