cask "voxnote" do
  version "1.6.0"
  sha256 "d10b9170393810b0a6e057df697e4ce80ec712c702fdec98b0c78809dd000f9c"

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
