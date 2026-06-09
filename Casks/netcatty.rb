cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.29"
  sha256 arm:   "548e6c5ffef8ccd001d3ade0997c3042206e39fccaaad50c92785e8908568a36",
         intel: "e46394814d0f0b5893b847c3bb6dcd9249d56e22f94d469680f8c6b27a2265a6"

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
