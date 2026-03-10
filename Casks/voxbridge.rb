cask "voxbridge" do
  version "0.8.1"
  sha256 "a0e7084e4b0ca87e5b52f61b8eba71dc7e6ecd72f003a743926a1483ae1db4c3"

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
