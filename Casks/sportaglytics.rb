cask "sportaglytics" do
  arch arm: "arm64", intel: "x64"

  version "0.17.3"
  sha256 arm:   "27252eec288b3eb1a373132ef0f8eb4f0d8bd986ab5b0c49beb1429d44a2830c",
         intel: "79c22e7e5e4cd38ee12bdffc00307f5e6e946ae16f50581ae3929b5a3bd74cab"

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
