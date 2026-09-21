cask "sportaglytics" do
  arch arm: "arm64", intel: "x64"

  version "0.16.1"
  sha256 arm:   "90148e72e0052423e3447ab5421ff0e650d40c834d2d1eea289194e47465364e",
         intel: "c63cb83ebf54d83ac6d7a22771f80d1b5e818849903a630921b5b78d37aff051"

  url "https://github.com/Kou-ISK/sportaglytics/releases/download/v#{version}/SporTagLytics-#{version}-#{arch}.dmg",
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
