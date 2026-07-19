cask "sportaglytics" do
  version "0.7.0"
  sha256 arm:   "b4235d54f2bd9cd1384547b7c821ddd3ae6230fd4f4efbef1b9c6819f40a6339",
         intel: "568c9d7d9b740ba9a7192e373240394dc81db7c673c024f69a279186cd5f65e1"

  url "https://github.com/Kou-ISK/sportaglytics/releases/download/v#{version}/SporTagLytics-#{version}-#{Hardware::CPU.arch}.dmg",
      verified: "github.com/Kou-ISK/sportaglytics/"
  name "SporTagLytics"
  desc "Video tagging application for sports analysis"
  homepage "https://github.com/Kou-ISK/sportaglytics"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SporTagLytics.app"

  zap trash: [
    "~/Library/Application Support/sportaglytics",
    "~/Library/Preferences/com.kouisk.sportaglytics.plist",
    "~/Library/Saved Application State/com.kouisk.sportaglytics.savedState",
  ]
end
