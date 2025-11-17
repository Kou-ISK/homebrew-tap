cask "tag-my-video" do
  version "0.1.0"
  sha256 arm:   "fcd5a1e5ec497518cc85dca6bcf5927416ce0ddfd41d1f8d69c6b764a6e366e1",
         intel: "73d770bcafa19d008b6958f78f549fef450481ec5b013db7af1dd3c47a29d169"

  url "https://github.com/Kou-ISK/tag-my-video/releases/download/v#{version}/Tag My Video-#{version}-#{Hardware::CPU.arch}.zip",
      verified: "github.com/Kou-ISK/tag-my-video/"
  name "Tag My Video"
  desc "Video tagging application for sports analysis"
  homepage "https://github.com/Kou-ISK/tag-my-video"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tag My Video.app"

  zap trash: [
    "~/Library/Application Support/tag-my-video",
    "~/Library/Preferences/com.kouisk.tagmyvideo.plist",
    "~/Library/Saved Application State/com.kouisk.tagmyvideo.savedState",
  ]
end
