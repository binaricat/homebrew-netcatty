cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.45"
  sha256 arm:   "665bd7a0b24dc1c8f5f0a18041282773726bfdd6151dc5852f376260c80d90d5",
         intel: "8f37c1b37412cc808214332eaaddc8b25e3b894b5af87fb59ff4871b9365978e"

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
