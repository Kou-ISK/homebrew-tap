cask "sportaglytics" do
  version "0.8.0"
  sha256 arm:   "5f249a37f81ae9526b55a6fd54951c298655ba10b3c9b88970e4a15c6e286b24",
         intel: "7e750d2346e224adb96bb42af3de4a805354348420036f050af32e316030d5d3"

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
