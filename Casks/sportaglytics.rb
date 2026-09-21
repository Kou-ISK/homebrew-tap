cask "sportaglytics" do
  arch arm: "arm64", intel: "x64"

  version "0.15.1"
  sha256 arm:   "35316012f35e34c74d39581002f4ee9bce243c550c5dd706d6092287e5cecd8f",
         intel: "adb26b385b3f01ee577df8eaee9936fa51c214f128476b64e03b934ba8d034f8"

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
