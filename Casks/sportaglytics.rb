cask "sportaglytics" do
  arch arm: "arm64", intel: "x64"

  version "0.13.3"
  sha256 arm:   "93b69493aa3466d94a1447c9652fba5ebb26301cbbfcd161212e9d8030794588",
         intel: "823aad43549d624ebfb8cf3286cccc7dbe5e49e2cdcd1e4780b4dd7371db312b"

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
