cask "sportaglytics" do
  version "0.3.3"
  sha256 arm:   "7a9f31aba0e4d330026290c3437ad1c22b6ac78368cad5fc7d3a695b00d2348f",
         intel: "b2b5514f59a3239b34ebdc3b08a254c0092dcf5b9d2fcd857ec5d515e6a0e3d8"

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
