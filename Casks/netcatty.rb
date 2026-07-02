cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.55"
  sha256 arm:   "61a3b632f858df2dc0e702c7cb8bd1c9044a40e3def5e36e63fbcc691e16d6f2",
         intel: "a8c5ff8bce6895c28c7ba6bdc541159d59f510613dae0d1420d0847621cafd2a"

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
