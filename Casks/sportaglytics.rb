cask "sportaglytics" do
  arch arm: "arm64", intel: "x64"

  version "0.17.46"
  sha256 arm: "52e8ab0e704b46cc5d5bc978b87900b52672ace92199fbe3cf01cd01c4ffb063",
         intel: "5716f2dd3dc8e9fa1ce165a468ccf5106e1d308140264817f46e1fb40f681459"

  url "https://github.com/Kou-ISK/sportaglytics/releases/download/v#{version}/SporTagLytics-#{version}-#{arch}.dmg",
      verified: "github.com/Kou-ISK/sportaglytics/"
  name "SporTagLytics"
  desc "Video tagging application for sports analysis"
  homepage "https://github.com/Kou-ISK/sportaglytics"

  livecheck do
    url :url
    strategy :github_releases do |json|
      json.filter_map do |release|
        next if release["draft"] || release["prerelease"]
        version = release["tag_name"]&.match(/^v(\d+\.\d+\.\d+)$/)&.[](1)
        next unless version
        names = release.fetch("assets", []).map { |asset| asset["name"] }
        version if %w[arm64 x64].all? { |arch| names.include?("SporTagLytics-#{version}-#{arch}.dmg") }
      end
    end
  end

  app "SporTagLytics.app"

  zap trash: [
    "~/Library/Application Support/sportaglytics",
    "~/Library/Preferences/com.kouisk.sportaglytics.plist",
    "~/Library/Saved Application State/com.kouisk.sportaglytics.savedState",
  ]
end
