cask "sportaglytics" do
  arch arm: "arm64", intel: "x64"

  version "0.18.0"
  sha256 arm: "7e3af964cfa9952548a50c5fa9b51a6e97eb32dec78c2aa2765ea2d83b6328db",
         intel: "c26a1e98fc0629a3b7c1ef2c586dbbf0728e07e069f3520faef138d570e560f2"

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
