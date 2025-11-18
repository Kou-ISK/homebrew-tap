cask "sportaglytics" do
  version "0.1.0"
  sha256 arm:   "f35e0e945f027342d31a34d2bb311721f62d63e5f4f3d6917b793292e7257cc9",
         intel: "b0f3af5866b7eb03f6fbc7f21487428222eccd9bbd59ccb7f4442d9c7074c49d"

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
