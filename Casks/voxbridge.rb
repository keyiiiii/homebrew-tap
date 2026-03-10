cask "voxbridge" do
  version "0.7.0"
  sha256 "186984393eaad719da398e9d066637aa67706d98e052fa067f97ecf4129cceaf"

  url "https://github.com/keyiiiii/VoxBridge/releases/download/v#{version}/VoxBridge-#{version}-arm64.zip"
  name "VoxBridge"
  desc "Fully local voice input tool with push-to-talk"
  homepage "https://github.com/keyiiiii/VoxBridge"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "VoxBridge.app"

  zap trash: [
    "~/Library/Application Support/VoxBridge",
    "~/Library/Logs/VoxBridge.log",
  ]
end
