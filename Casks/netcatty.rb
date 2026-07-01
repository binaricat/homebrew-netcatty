cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.52"
  sha256 arm:   "0c2346ff1a931a28e858cb3c0f76607be34937fc15be07abe032a4d1f9acdfc3",
         intel: "116bfc99ae3b301d80fbd19452de62483bdd75fb5ca07b602e36db34e6ae7641"

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
