cask "sportaglytics" do
  version "0.4.2"
  sha256 arm:   "78ef759d88fcde63080170e4f5b8ea4925fe0d401baad7a687fff037a5d80476",
         intel: "e605ac3a6ce50a85f3d5fd6225d9e841eac32a6e33bf39e221b414fc92902d9e"

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
