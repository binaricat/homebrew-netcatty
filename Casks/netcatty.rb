cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.67"
  sha256 arm:   "11e901c0222e45f4c2b16c403e27e83c17112ccfdbf7e55d06c878eca45d8661",
         intel: "fc3c7fcdab3fd1b05a4403658eb15278d032f71a41adb983e3009d040ceb14b4"

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
