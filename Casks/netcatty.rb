cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.44"
  sha256 arm:   "725f7ae679eb8014446b5ea64af83771af8ab662adcf3b941c640bfc31afbfbb",
         intel: "7556680b9d14f440adb0ad4f84ca9c74a3555a9610dd38797acf6b59616008c0"

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
