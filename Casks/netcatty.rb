cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.20"
  sha256 arm:   "2a6e88bfa0cddb46b0dde53bb8a92cf07f19e5a5a48b998f2e12975efd9730bb",
         intel: "4d1cbd34371ade07a81807ca69ccb34e3fe4004a51b6a9e8b8011d2cf52be046"

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
