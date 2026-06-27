cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.47"
  sha256 arm:   "d70664506ccddbb21df1ae4e4105aa8ddcc8b3d371431263ee8893b77127490b",
         intel: "b49707538cf918bc3c9d3c80a9d46d78c9074b393bcacddf8495c83a87d3a732"

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
