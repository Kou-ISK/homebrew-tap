cask "sportaglytics" do
  version "0.2.1"
  sha256 arm:   "15b4d1f8e749a1eb20e9f37c217fecbd8ed0228a9a167698b81939c2c828fd27",
         intel: "1a838620768bc462ccafe16b922a40d8f59f9b949599e5fe803e1e431a7c527c"

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
