describe Fastlane::Actions::EnsureXcodeBuildVersionAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The ensure_xcode_build_version plugin is working!")

      Fastlane::Actions::EnsureXcodeBuildVersionAction.run(nil)
    end
  end
end
