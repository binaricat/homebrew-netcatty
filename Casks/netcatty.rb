cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.15"
  sha256 arm:   "6a6c4441a7537c2c6a0c44d99984fe448a4e742951f85abcc0ff41c20ca8cc2d",
         intel: "d509f4a4fa9ae6742bff813b0d04ae9baf58f21a5099451114a13226ef0b5af5"

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
