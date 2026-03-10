cask "voxbridge" do
  version "0.8.2"
  sha256 "98c1cbb8e5b22d4d25bc8fbf4ad2dc8d71f3f943f582dff89d3a760a576d504b"

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
