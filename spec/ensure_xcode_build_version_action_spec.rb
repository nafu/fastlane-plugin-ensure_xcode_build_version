describe Fastlane::Actions::EnsureXcodeBuildVersionAction do
  describe '#run' do
    it 'ensures xcode build version' do
      expect(Fastlane::UI).to receive(:message).with(/Selected Xcode Build version is not correct/)
      expect(Fastlane::UI).to receive(:message).with("To correct this, use: `xcode_select(version: 8A218a)`.")
      expect(Fastlane::UI).to receive(:user_error!).with(/Selected Xcode Build version doesn't match your requirement./)

      Fastlane::Actions::EnsureXcodeBuildVersionAction.run(build_version: '8A218a')
    end
  end
end
