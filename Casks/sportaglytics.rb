cask "sportaglytics" do
  version "0.1.0"
  sha256 arm:   "af4b3cb184063478c45c83431b4c35842cf5fe20f618f21a51eb9a3a01b68a2a",
         intel: "9587b54082ff23e1aa9332aba33668cfd63bd2c908bf531f79e0f39682e8f684"

  url "https://github.com/Kou-ISK/sportaglytics/releases/download/v#{version}/SporTagLytics-#{version}-#{Hardware::CPU.arch}.zip",
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
