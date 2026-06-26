cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.46"
  sha256 arm:   "a6aa5e2cb0b58e696fe12aa63e6fd854e8bcf47ce133879d6242f1706c100884",
         intel: "235f7d65134e85c21c529794e856279c3dc0b8c92a889e68d78123ebb670f41c"

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
