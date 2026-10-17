cask "sportaglytics" do
  arch arm: "arm64", intel: "x64"

  version "0.17.9"
  sha256 arm: "4061b14ad35e4f379ebc16cb813e3261aed8204e18cf90b6452694f9b748b73c",
         intel: "3b6fcc358ba9bbc4acd666278ffcdc50d4cc1c5b8249320ac5672c28ff0d03f2"

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
