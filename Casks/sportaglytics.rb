cask "sportaglytics" do
  version "0.8.1"
  sha256 arm:   "74965f6daa36f3d13ed8f509845c63061fc25d95d734ce26fcc62ad16fa1a6bc",
         intel: "0666e63c1f8a3a6c4c695854e0eb8b5e6cd73f26c17258f76f2e5f068f9aac7a"

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
