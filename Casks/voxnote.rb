cask "voxnote" do
  version "1.4.1"
  sha256 "4593fb67b4f60c27aa020bd899ff1dee0e516d60995cb7b1a9ddcb950a8c323c"

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
