cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.34"
  sha256 arm:   "deaffa225ed2c3be5c127684439827cf314deda1c06a4ffbdebdf8bccc07ff16",
         intel: "2183a4054a35337dc70d2ba30be77318bf25ff8f5ae842e317176b76a944dc51"

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
