cask "sportaglytics" do
  arch arm: "arm64", intel: "x64"

  version "0.17.4"
  sha256 arm:   "a5fb7056c243dd8f096f8f02aab5edc28a38fada31527c731ca2e7f33f7cb742",
         intel: "cef6bc50f707b5db54bbb6af341d1f75ebaae578e73d6a2a6d95e476edb94862"

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
