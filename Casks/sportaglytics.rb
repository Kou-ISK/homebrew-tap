cask "sportaglytics" do
  arch arm: "arm64", intel: "x64"

  version "0.13.1"
  sha256 arm:   "1f2a28c53794e0c608bbf76b36e235602e67a2403159377f00bc5c767ae5042a",
         intel: "0e921d3daeeab47d98d500f2156fd0cb453a12d16f75021572c8d76b6be368c7"

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
