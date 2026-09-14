cask "sportaglytics" do
  arch arm: "arm64", intel: "x64"

  version "0.13.2"
  sha256 arm:   "29ecaa2cb21c84810de7cb22afe0800583be8161a0c5ee3bf2780b627a69b9ce",
         intel: "fd483a1c3cbc64e6eca3348fc803805b28187ffdbcad930cecfd6d976df9ffe1"

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
