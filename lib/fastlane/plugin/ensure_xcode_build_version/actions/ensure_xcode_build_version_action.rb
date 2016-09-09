module Fastlane
  module Actions
    class EnsureXcodeBuildVersionAction < Action
      def self.run(params)
        UI.message("The ensure_xcode_build_version plugin is working!")
      end

      def self.description
        "Ensure Xcode Build Version for working with Beta, GM and Release"
      end

      def self.authors
        ["Fumiya Nakamura"]
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "ENSURE_XCODE_BUILD_VERSION_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Platforms.md
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
