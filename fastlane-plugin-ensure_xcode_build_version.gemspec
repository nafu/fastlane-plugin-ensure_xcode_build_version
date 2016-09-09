# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/ensure_xcode_build_version/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-ensure_xcode_build_version'
  spec.version       = Fastlane::EnsureXcodeBuildVersion::VERSION
  spec.author        = %q{Fumiya Nakamura}
  spec.email         = %q{nakamurafumiya003@gmail.com}

  spec.summary       = %q{Ensure Xcode Build Version for working with Beta, GM and Release}
  spec.homepage      = "https://github.com/nafu/fastlane-plugin-ensure_xcode_build_version"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # spec.add_dependency 'your-dependency', '~> 1.0.0'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 1.102.0'
end
