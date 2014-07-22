# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth_vimeo_oauth2/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-vimeo-oauth2"
  spec.version       = OmniauthVimeoOauth2::VERSION
  spec.authors       = ["Adam Haris | Acts as Consultancy Ltd."]
  spec.email         = ["iamadamharis@gmail.com"]
  spec.description   = %q{Omniauth strategy for Vimeo}
  spec.summary       = %q{Omniauth strategy for Vimeo}
  spec.homepage      = "http://acts-as-consultancy.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth', '~> 1.0'
  spec.add_dependency 'omniauth-oauth2', '~> 1.1'
  spec.add_dependency 'multi_json'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'mocha'
end
