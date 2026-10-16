cask "sportaglytics" do
  arch arm: "arm64", intel: "x64"

  version "0.17.8"
  sha256 arm: "34f501068bb1ceae4a56e035aa63d074e11ed7d058878031ae578f90725b430f",
         intel: "70518a3c254c4bf07917866fd725f00e9fcad76366398d61538d7fe5c02f6c26"

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
