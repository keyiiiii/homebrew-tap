cask "voxnote" do
  version "1.5.0"
  sha256 "89e2d4db75e248d38a1cc6c0a053a6ca1857d70704f380f62bffc414101b2291"

  url "https://github.com/keyiiiii/VoxNote/releases/download/v#{version}/VoxNote-#{version}.zip"
  name "VoxNote"
  desc "Real-time meeting transcription app powered by whisper.cpp"
  homepage "https://github.com/keyiiiii/VoxNote"

  depends_on macos: ">= :ventura"

  app "VoxNote.app"

  zap trash: [
    "~/Library/Application Support/VoxNote",
  ]
end
