cask "sportaglytics" do
  version "0.3.1"
  sha256 arm:   "a81c7b5426a2334e5b07fb5b8c61831bc48b1fa47a54c3e0ca9c3de2bf255a46",
         intel: "f40d48df3b2719b27b1f4eded0fdeb1825d8a2dbc8aebc2e93dbc93156eb5e36"

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
