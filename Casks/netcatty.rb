cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.8"
  sha256 arm:   "8839ae2262a7f70a7937bae04b2f1689de917a1426aaf8d1878aaf15be3049db",
         intel: "3d61034aa721edbdb081baf77801b6690bb7acb2fa3e8c749cd103ba666d8dfe"

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
