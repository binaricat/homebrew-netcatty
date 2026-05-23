cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.11"
  sha256 arm:   "07d6909bc5caff78aa8317a8774e485a5f4373534d9bf8ce49a27d4edc596490",
         intel: "a2a50b15370cf41bd0fd0a019b8c5e04c3103eae700eeaf9bcaa1a5b0f06d442"

  url "https://github.com/binaricat/Netcatty/releases/download/v#{version}/Netcatty-#{version}-mac-#{arch}.dmg"
  name "Netcatty"
  desc "Modern SSH manager and terminal app"
  homepage "https://github.com/binaricat/Netcatty"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Netcatty.app"

  zap trash: [
    "~/Library/Application Support/Netcatty",
    "~/Library/Caches/com.netcatty.app",
    "~/Library/Caches/com.netcatty.app.ShipIt",
    "~/Library/Logs/Netcatty",
    "~/Library/Preferences/com.netcatty.app.plist",
    "~/Library/Saved Application State/com.netcatty.app.savedState",
  ]
end
