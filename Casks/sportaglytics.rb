cask "sportaglytics" do
  version "0.8.3"
  sha256 arm:   "41fcc5cfdf41a32758fb69ce13351aa5f0121aa086a1cc4f69452b6a2ad4d100",
         intel: "2c9b460c32cd99631aac276aa0fb3bd221393a7ffe1a343e730d57f6ef965cfe"

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
