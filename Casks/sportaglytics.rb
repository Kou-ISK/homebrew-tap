cask "sportaglytics" do
  version "0.2.4"
  sha256 arm:   "d648c782d7a8ed872138cfb7c028652adddada71c1dd7d33a0c9cf319feec102",
         intel: "03cbaff57cd35d7fad1be9ebbac7cb1bf260a2d314e0d2b89600b3e9a5f034a4"

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
