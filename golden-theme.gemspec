# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'golden/theme/version'

Gem::Specification.new do |spec|
  spec.name          = 'golden-theme'
  spec.version       = Golden::Theme::VERSION
  spec.authors       = ['Tse-Ching Ho']
  spec.email         = ['tsechingho@gmail.com']
  spec.summary       = %q{Provide theme helpers for Rails.}
  spec.description   = %q{Provide theme helpers for Rails.}
  spec.homepage      = 'https://github.com/goldenio/golden-theme'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'

  spec.add_dependency 'sass-rails'
  spec.add_dependency 'compass-rails'

  spec.add_dependency 'bootstrap-sass'
  spec.add_dependency 'autoprefixer-rails'

  spec.add_dependency 'foundation-rails'
  spec.add_dependency 'foundation-icons-sass-rails'

  spec.add_dependency 'coffee-rails'
  spec.add_dependency 'jquery-rails'
  spec.add_dependency 'jquery-ui-rails'

  spec.add_dependency 'chosen-rails'
  spec.add_dependency 'will_paginate'
end
