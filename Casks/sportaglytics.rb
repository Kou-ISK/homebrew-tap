cask "sportaglytics" do
  version "0.2.6"
  sha256 arm:   "95aee75c1146052226df7714d933ac9fd1851e6e68ece9fbcf960c5c1c6692d4",
         intel: "3253e715ccdfbc16108bbb018cb7d970a66c5005ca4bc3cf6ae377aa7344b570"

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
