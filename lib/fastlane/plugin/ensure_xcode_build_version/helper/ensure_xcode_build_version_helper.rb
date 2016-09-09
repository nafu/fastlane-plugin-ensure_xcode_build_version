module Fastlane
  module Helper
    class EnsureXcodeBuildVersionHelper
      # class methods that you define here become available in your action
      # as `Helper::EnsureXcodeBuildVersionHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the ensure_xcode_build_version plugin helper!")
      end
    end
  end
end
