cask "sportaglytics" do
  version "0.2.3"
  sha256 arm:   "d0d7b95fb7ec941cf51515a77bd5f5956bda722d66c8980e10dee4457d481602",
         intel: "ba0ada9ad386a32ff9c02c075cf0c72fa9cedeff011e33951989fe98fd2aec68"

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
