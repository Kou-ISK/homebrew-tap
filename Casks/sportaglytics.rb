cask "sportaglytics" do
  version "0.4.1"
  sha256 arm:   "c63b739e2c8e396218fa390d3bded68899b15c562905e3692a3864e440072ca7",
         intel: "e6c8a6b7334f6133771d9b84d32a7b4d712f3344dbd97cf7c80b08e4e7c6ce85"

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
