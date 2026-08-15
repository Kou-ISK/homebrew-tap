cask "sportaglytics" do
  version "0.8.4"
  sha256 arm:   "0e6d9794fc5c691333ee39c9a7d0808710a8d13086f1ed5f27f53b491f0cee18",
         intel: "d543886c1a01242fe3cf13e4becf50c818336c748b3c37355e3e4aa15e022c2c"

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
