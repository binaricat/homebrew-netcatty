cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.42"
  sha256 arm:   "b628b7d360adb9a71eab8c594718cc37bbbc0eb2e18644e1a450d9dbac144d52",
         intel: "5625fad0c18cc19d5ee4714ab3dc8a1a858b0bac425f380484b5ee54e49ac4f7"

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
