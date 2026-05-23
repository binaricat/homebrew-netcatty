cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.10"
  sha256 arm:   "54e9bae09c6d2e21adca235dec5ee03b50fbca77b12128a2bee9f6b8b2ee652e",
         intel: "bda549f77befcd6b67f29c4c824af1d66471533808e2db7396224ccbde19c232"

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
