cask "voxbridge" do
  version "0.5.0"
  sha256 "f8b504328885567ece44f0a6aec1ae438f6eb1642a7f1165c0d5dea69c9d0216"

  url "https://github.com/keyiiiii/VoxBridge/releases/download/v#{version}/VoxBridge-#{version}-arm64.zip"
  name "VoxBridge"
  desc "Fully local voice input tool for macOS"
  homepage "https://github.com/keyiiiii/VoxBridge"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "VoxBridge.app"

  zap trash: [
    "~/Library/Application Support/VoxBridge",
    "~/Library/Logs/VoxBridge.log",
  ]
end
