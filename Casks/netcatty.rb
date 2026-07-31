cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.74"
  sha256 arm:   "28885ccbaa4f1a114b6f7e4288a213c80d74b07c4ff91f82e2c5782e0b5e0d20",
         intel: "bc0f8fe6514df06d8c03975ae78c1a963a58bc5e32e9091d28c5add01681c9e0"

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
