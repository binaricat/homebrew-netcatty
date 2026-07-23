cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.71"
  sha256 arm:   "4d70f4bd69b8e33d97ce4c160ac5cb03a961c354581fc5f5d45951ea3eda8430",
         intel: "86cbe3e89b1fc9f0bc7545ab08115b12923d94a6fc3e64e75833cc2217f5497a"

  url "https://github.com/binaricat/Netcatty/releases/download/v#{version}/Netcatty-#{version}-mac-#{arch}.dmg"
  name "Netcatty"
  desc "Modern SSH manager and terminal app"
  homepage "https://github.com/binaricat/Netcatty"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

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
