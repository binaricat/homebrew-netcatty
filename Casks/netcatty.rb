cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.61"
  sha256 arm:   "795cce17001b758a07051d5f5307babc2e5ff78f24afc4658e0c49e2ab49d3d1",
         intel: "6bf3811cfa59076c2146176e86d72ef5e16fd54d8048c6a04cc58e8b91c59578"

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
