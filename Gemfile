source 'https://rubygems.org'

gem "xcode-install", ">= 2.0.10" # needed for running xcode-install related tests

gemspec

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval(File.read(plugins_path), binding) if File.exist?(plugins_path)
