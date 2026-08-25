cask "sportaglytics" do
  version "0.11.0"
  sha256 arm:   "f2733631aad070476bd7c85037c0038748810d1bf6481048bc035144479c60fa",
         intel: "12df280708b9f58859bb8bedc3a873170c0e0e36a9295092574d711d334cda94"

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
