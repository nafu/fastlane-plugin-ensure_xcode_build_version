# Since Xcode has a dependency to 2 external gems: sqlite and CFPropertyList
# More information https://github.com/fastlane/fastlane/issues/6495
# We have to unset those variables for rbenv, rvm and when the user uses bundler
unset RUBYLIB
unset RUBYOPT
# If we unset Bundle related path, we got errors:
# /Users/distiller/ookami-ios/vendor/bundle/ruby/2.3.0/bin/xcversion:22:in `<main>': undefined method `activate_bin_path' for Gem:Module (NoMethodError)
# unset BUNDLE_BIN_PATH
# unset _ORIGINAL_GEM_PATH
# unset BUNDLE_GEMFILE
# Even if we do not use rbenv in some environments such as CircleCI,
# We also need to unset GEM_HOME and GEM_PATH explicitly.
# More information https://github.com/fastlane/fastlane/issues/6277
unset GEM_HOME
unset GEM_PATH

xcversion selected | tail -1 | xargs echo -n
