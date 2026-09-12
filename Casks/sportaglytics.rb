cask "sportaglytics" do
  arch arm: "arm64", intel: "x64"

  version "0.12.1"
  sha256 arm:   "ae6660e356f0750b0ac350a39f0fb9eec0d5ceb15f68e3327e2bedccea0542ff",
         intel: "152e481a2328bfb785f53104845e94bdd88e031b0a59160030c51ee354c39f7e"

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
