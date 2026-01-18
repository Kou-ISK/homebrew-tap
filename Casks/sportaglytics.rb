cask "sportaglytics" do
  version "0.2.7"
  sha256 arm:   "3ff0bbd16b977b03118bfa02e2e0228b0390250cbbd1579492d722d413dc33e9",
         intel: "d8ff890dffe6deb5352caf16224b5cc94b9fb9a0a65b6205628ecc6ff4963534"

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
