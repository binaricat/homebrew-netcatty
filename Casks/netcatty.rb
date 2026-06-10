cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.31"
  sha256 arm:   "4d432c4785efc2e95ad553b790ecd098b65baa7e2d16fb51a81d23c2a4b89a53",
         intel: "613ca053a309ec15eec67ec4da42d593ee2654eff7509f91592a9c8aafe9efb4"

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
