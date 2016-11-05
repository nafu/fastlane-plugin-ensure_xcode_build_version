# Since Xcode has a dependency to 2 external gems: sqlite and CFPropertyList
# More information https://github.com/fastlane/fastlane/issues/6495
# We have to unset those variables for rbenv, rvm and when the user uses bundler
unset RUBYLIB
unset RUBYOPT
unset BUNDLE_BIN_PATH
unset _ORIGINAL_GEM_PATH
unset BUNDLE_GEMFILE

xcversion selected | tail -1 | xargs echo -n
