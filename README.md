# ensure_xcode_build_version plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-ensure_xcode_build_version)

[![Gem Version](https://badge.fury.io/rb/fastlane-plugin-ensure_xcode_build_version.svg)](https://badge.fury.io/rb/fastlane-plugin-ensure_xcode_build_version)
[![CircleCI](https://circleci.com/gh/nafu/fastlane-plugin-ensure_xcode_build_version.svg?style=svg)](https://circleci.com/gh/nafu/fastlane-plugin-ensure_xcode_build_version)
[![Code Climate](https://codeclimate.com/github/nafu/fastlane-plugin-ensure_xcode_build_version/badges/gpa.svg)](https://codeclimate.com/github/nafu/fastlane-plugin-ensure_xcode_build_version)
[![Coverage Status](https://coveralls.io/repos/github/nafu/fastlane-plugin-ensure_xcode_build_version/badge.svg?branch=master)](https://coveralls.io/github/nafu/fastlane-plugin-ensure_xcode_build_version?branch=master)
[![Dependency Status](https://gemnasium.com/badges/github.com/nafu/fastlane-plugin-ensure_xcode_build_version.svg)](https://gemnasium.com/github.com/nafu/fastlane-plugin-ensure_xcode_build_version)
[![Inline docs](http://inch-ci.org/github/nafu/fastlane-plugin-ensure_xcode_build_version.svg?branch=master)](http://inch-ci.org/github/nafu/fastlane-plugin-ensure_xcode_build_version)

## Getting Started

This project is a [fastlane](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-ensure_xcode_build_version`, add it to your project by running:

```bash
fastlane add_plugin ensure_xcode_build_version
```

## About ensure_xcode_build_version

Ensure the selected Xcode Build version with xcode-select matches a value.

If building your app requires a specific version of Xcode, you can invoke this command before using gym. For example, to ensure that a beta version is not accidentally selected to build, which would make uploading to TestFlight fail."

## Example

Check out the [example `Fastfile`](fastlane/Fastfile) to see how to use this plugin. Try it by cloning the repo, running `fastlane install_plugins` and `bundle exec fastlane test`. 

**Note to author:** Please set up a sample project to make it easy for users to explore what your plugin does. Provide everything that is necessary to try out the plugin in this project (including a sample Xcode/Android project if necessary)

## Run tests for this plugin

To run both the tests, and code style validation, run

```
rake
```

To automatically fix many of the styling issues, use 
```
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://github.com/fastlane/fastlane/blob/master/fastlane/docs/PluginsTroubleshooting.md) doc in the main `fastlane` repo.

## Using `fastlane` Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Plugins.md).

## About `fastlane`

`fastlane` is the easiest way to automate building and releasing your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
