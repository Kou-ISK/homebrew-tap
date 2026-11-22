cask "sportaglytics" do
  arch arm: "arm64", intel: "x64"

  version "0.17.34"
  sha256 arm: "c9b966abe7831bc85012105d6a599e34575a1a9f8faf562610237e58f43598ab",
         intel: "2dd70bd784f8aa390a4463257167b0f5124fb8351b7dfedc3142ea5713a59166"

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
