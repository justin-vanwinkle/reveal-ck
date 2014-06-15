# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require File.join([File.dirname(__FILE__),'lib','reveal-ck','version.rb'])

Gem::Specification.new do |s|
  s.name        = 'reveal-ck'
  s.version     = RevealCK::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Jed Northridge']
  s.email       = ['northridge@gmail.com']
  s.homepage    = 'https://github.com/jedcn/reveal-ck'
  s.description = 'A reveal.js construction kit'
  s.summary     = 'A toolkit that takes a minimal description of slides and builds a reveal.js presentation'

  #
  # Runtime Dependencies
  s.add_dependency 'docile',    '~> 1.1'
  s.add_dependency 'gli',       '~> 2.7'
  s.add_dependency 'haml',      '~> 4.0'
  s.add_dependency 'rake',      '~> 10.1'
  s.add_dependency 'redcarpet', '~> 2.3'
  s.add_dependency 'RedCloth',  '~> 4.2'
  s.add_dependency 'slim',      '~> 2.0'
  s.add_dependency 'tilt',      '~> 2.0'

  #
  # Development Dependencies
  s.add_development_dependency 'aruba',     '~> 0.5'
  s.add_development_dependency 'cucumber',  '~> 1.3'
  s.add_development_dependency 'relish',    '~> 0.7'
  s.add_development_dependency 'rspec',     '~> 2.14'
  s.add_development_dependency 'rubocop',   '~> 0.23'
  s.add_development_dependency 'simplecov', '~> 0.8'

  files = {
    core: ['LICENSE', 'Rakefile', 'Gemfile'],
    supporting: Dir.glob('files/**/*'),
    lib: `git ls-files lib`.split("\n"),
    rakelib: `git ls-files rakelib`.split("\n")
  }

  s.files         = files[:core] + files[:lib] + files[:rakelib] + files[:supporting]
  s.test_files    = `git ls-files -- {spec,features}/**/*`.split("\n")
  s.executables   = ['reveal-ck']
  s.require_paths = ['lib']

  s.date = '2014-06-15'
  s.extra_rdoc_files = [
    'LICENSE',
    'README.md'
  ]

  s.licenses = ['MIT']
  s.require_paths = ['lib']
end
