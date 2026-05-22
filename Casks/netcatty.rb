cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.9"
  sha256 arm:   "f2a83fbef8d0084e74743c391d7f333181e0524ca7e142ebdd92a3d56f0a5180",
         intel: "b3c9a0e93586f57670d9330a48062653f81574ee5ce18210a79959de4aa2eb72"

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
