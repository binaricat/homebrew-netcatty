cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.23"
  sha256 arm:   "4aa13472bfa5dd4a27342dd1f5d6ff9ffae1bd79a0e15b913024c6d8e61dff51",
         intel: "59e62370e1d3e71e59554815ba3d914fbff3eecc7893ebb89739a12c8fd7594e"

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
