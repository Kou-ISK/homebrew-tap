cask "sportaglytics" do
  version "0.9.0"
  sha256 arm:   "584866318abc93bb7b7573adffd0286a17c8e7960ea0633e3322157f07c7540b",
         intel: "7112a44ec3dca4dabb8135a9b6a1cfa5d3f3ab742c39fb42f5a9dc177e5d35d7"

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
