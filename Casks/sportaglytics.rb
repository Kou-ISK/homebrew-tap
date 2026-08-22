cask "sportaglytics" do
  version "0.10.3"
  sha256 arm:   "28058a642b726a2b865e8e5ad2df5e5e113db508e129bb9158942b2ed66dec5a",
         intel: "1b8db7b7d2e18f3858bbef718f8975dc06cc679d9e51e3c70adf573be4e4c2f1"

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
