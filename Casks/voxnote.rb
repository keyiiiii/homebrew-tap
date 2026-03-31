cask "voxnote" do
  version "2.0.0"
  sha256 "bf6f1bd5bf890b035e4fbaccc560c960431a0b425b567649a29ffd72d83f9175"

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
