cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.54"
  sha256 arm:   "21b1e8c1e2986e800fc589a07d49878e103d29b5e07a1ffa4c809c2a4d70d6ed",
         intel: "588fdfb4dd4c15a45de125d0f71f0f1829b4863f22471c86d6ae250cec0053a3"

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
