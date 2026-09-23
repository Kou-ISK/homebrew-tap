cask "sportaglytics" do
  arch arm: "arm64", intel: "x64"

  version "0.17.1"
  sha256 arm:   "ced13dbc7f389ef14fce24e92277de978533ca52e775a220b84e6801b843683c",
         intel: "a08cf29bfec2300d4140f69953396809cd21d5e9f58845b3eb83e569465650db"

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
