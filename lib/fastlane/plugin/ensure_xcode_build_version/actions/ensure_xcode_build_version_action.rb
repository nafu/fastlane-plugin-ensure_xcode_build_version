module Fastlane
  module Actions
    class EnsureXcodeBuildVersionAction < Action
      def self.run(params)
        required_build_version = params[:build_version]

        selected_build_version = sh "xcversion selected | tail -1 | xargs echo -n"

        versions_match = selected_build_version == "Build version #{required_build_version}"

        if versions_match
          UI.success("Selected Xcode Build version is correct: #{selected_build_version}")
        else
          UI.message("Selected Xcode Build version is not correct: #{selected_build_version}. You expected #{required_build_version}.")
          UI.message("To correct this, use: `xcode_select(version: #{required_build_version})`.")

          UI.user_error!("Selected Xcode Build version doesn't match your requirement.\nExpected: Build version #{required_build_version}\nActual: #{selected_build_version}\n")
        end
      end

      def self.description
        "Ensure the selected Xcode Build version with xcode-select matches a value"
      end

      def self.details
        "If building your app requires a specific version of Xcode, you can invoke this command before using gym.\n
        For example, to ensure that a beta version is not accidentally selected to build, which would make uploading to TestFlight fail."
      end

      def self.authors
        ["Fumiya Nakamura"]
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :build_version,
                                       env_name: "FL_ENSURE_XCODE_BUILD_VERSION",
                                       description: "Xcode Build version to verify that is selected",
                                       is_string: true,
                                       optional: false)
        ]
      end

      def self.output
        [
          ['FL_ENSURE_XCODE_BUILD_VERSION', 'Xcode Build version to verify that is selected']
        ]
      end

      def self.return_value
      end

      def self.is_supported?(platform)
        [:ios, :mac].include?(platform)
      end
    end
  end
end
