cask "sportaglytics" do
  version "0.2.0"
  sha256 arm:   "eb20821b2ad0d3dc9f24fa062dadd257a37b8899f427f0c08c96c06ae0d10b49",
         intel: "34da0129f348039c2dd0fc8f7163fe6b13c7b226e9067c5940c84fea879a7f6a"

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
