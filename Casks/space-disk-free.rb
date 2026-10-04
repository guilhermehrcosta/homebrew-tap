cask "space-disk-free" do
  version "0.0.2"
  sha256 "c40bc4a8b7c9587d508751c7d5d42644708890ea0415c9b3f6585203e9f8197a"

  url "https://github.com/guilhermehrcosta/space-disk-free/releases/download/#{version}/SpaceDiskFree-#{version}.dmg"
  name "Space Disk Free"
  desc "Menu bar app that shows what uses disk space and cleans it up"
  homepage "https://github.com/guilhermehrcosta/space-disk-free"

  depends_on macos: ">= :sonoma"

  app "Space Disk Free.app"

  uninstall quit: "com.guilhermecosta.SpaceDiskFree"

  zap trash: [
    "~/Library/Caches/com.guilhermecosta.SpaceDiskFree",
    "~/Library/HTTPStorages/com.guilhermecosta.SpaceDiskFree",
    "~/Library/Preferences/com.guilhermecosta.SpaceDiskFree.plist",
  ]

  caveats <<~EOS
    Space Disk Free is not signed with an Apple Developer ID, so macOS blocks its first launch.
    Open the app once, then go to System Settings > Privacy & Security and click "Open Anyway".
  EOS
end
