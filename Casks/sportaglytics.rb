cask "sportaglytics" do
  version "0.2.2"
  sha256 arm:   "4e7b1c94731e0f8b8bfe12696b1ac5eb31193692e6f46216a68f3af20a8fed89",
         intel: "76c98f335f7e80d81eff02e410cc5c10a72b4ddda6287e806ca55684181b5f24"

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
