describe Fastlane::Actions::EnsureXcodeBuildVersionAction do
  describe '#run' do
    let(:matching_response) { "Xcode 8.0\nBuild version 8A218a" }
    let(:matching_response_extra_output) { "Couldn't verify that spaceship is up to date\nXcode 8.0\nBuild version 8A218a" }
    let(:different_response) { "Xcode 7.3\nBuild version 34a893" }

    it "is successful when the build version matches" do
      expect(Fastlane::Actions::EnsureXcodeBuildVersionAction).to receive(:sh).and_return(matching_response)
      expect(Fastlane::UI).to receive(:success).with(/Driving the lane/)
      expect(Fastlane::UI).to receive(:success).with(/Selected Xcode Build version is correct/)

      Fastlane::FastFile.new.parse("lane :test do
        ensure_xcode_build_version(build_version: '8A218a')
      end").runner.execute(:test)
    end

    it "matches even when there is extra output" do
      expect(Fastlane::Actions::EnsureXcodeBuildVersionAction).to receive(:sh).and_return(matching_response_extra_output)
      expect(Fastlane::UI).to receive(:success).with(/Driving the lane/)
      expect(Fastlane::UI).to receive(:success).with(/Selected Xcode Build version is correct/)

      Fastlane::FastFile.new.parse("lane :test do
        ensure_xcode_build_version(build_version: '8A218a')
      end").runner.execute(:test)
    end

    it "presents an error when the build version does not match" do
      expect(Fastlane::Actions::EnsureXcodeBuildVersionAction).to receive(:sh).and_return(different_response)
      expect(Fastlane::UI).to receive(:user_error!)

      Fastlane::FastFile.new.parse("lane :test do
        ensure_xcode_build_version(build_version: '8A218a')
      end").runner.execute(:test)
    end
  end
end
