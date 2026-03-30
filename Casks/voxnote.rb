cask "voxnote" do
  version "1.4.0"
  sha256 "fe9c2f2dc5eedb249ddc27891fdf656905a434cb419788c972290fb161f5adda"

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
