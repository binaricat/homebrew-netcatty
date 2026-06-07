cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.24"
  sha256 arm:   "5846af0a491e9795d30c840df5876b7d646fd52bc74442ccdd45c03bbeaf9eec",
         intel: "ef7b8ffa7102d7af10f97e5c1a8d787016113474dba083d4f05568606c8af707"

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
