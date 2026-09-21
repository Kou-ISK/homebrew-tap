cask "sportaglytics" do
  arch arm: "arm64", intel: "x64"

  version "0.16.0"
  sha256 arm:   "c72e63ae0832489e6020cf6038d013fd206f6c5f0b8e3d45f02101f82c631149",
         intel: "de2f0502d680991ceeadb552f9a48faa43e7bfaa68cc12028ca71b73dfc81f9e"

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
