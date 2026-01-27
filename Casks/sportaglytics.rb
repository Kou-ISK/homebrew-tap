cask "sportaglytics" do
  version "0.4.3"
  sha256 arm:   "9ef70e45e2fc3bdccc15127cc1d85993b79c3c3e02efeac4e38f71a8c9e4b90c",
         intel: "079a24916338687566bedd2d52cb0142cec05c4350f3dd511b3ddaed0ff3df35"

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
