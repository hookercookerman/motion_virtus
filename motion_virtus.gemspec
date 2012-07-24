# -*- encoding: utf-8 -*-
require File.expand_path('../lib/motion_virtus/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["hookercookerman"]
  gem.email         = ["hookercookerman@gmail.com"]
  gem.description   = %q{Attributes on Steroids for Plain Old Ruby Objects For RubyMotion}
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/hookercookerman/motion_virtus"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "motion_virtus"
  gem.require_paths = ["lib"]
  gem.version       = MotionVirtus::VERSION

  gem.add_dependency 'bubble-wrap'
  gem.add_development_dependency 'motion-redgreen'
end
