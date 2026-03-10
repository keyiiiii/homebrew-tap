cask "voxbridge" do
  version "0.8.0"
  sha256 "8ba90f47f296cb66a48dd644f89b06abd3a6c260e4a3b0f8ea650fb08794ac58"

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
