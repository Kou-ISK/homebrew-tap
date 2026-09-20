cask "sportaglytics" do
  arch arm: "arm64", intel: "x64"

  version "0.14.1"
  sha256 arm:   "b2fa21fc515bd82e28d3a394b2ea11a6d9d9fba5364182dfdeba78ae644321a9",
         intel: "b04deb4177315244bf11a9539d67408578abc174f11e987d1f8ed1ad9384a947"

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
