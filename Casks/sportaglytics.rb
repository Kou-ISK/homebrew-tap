cask "sportaglytics" do
  arch arm: "arm64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "c15bdf1fa373f6ba1857eeac93b0fa98637723c3c428ab9a2972e12308443503",
         intel: "65a89a4e9399812df28b7eed43eca6bb75de0eed60d2e76ece867fdb6845722d"

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
