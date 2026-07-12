cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.64"
  sha256 arm:   "e055c6dd3ca3e3030cc25cec21fea14977ebc83ae3cbb0fa43923879806f9f2c",
         intel: "dfe2d7884b1f52ff4fa9154bfe5368bcb2078c4bb498e921c4d991d696d101ca"

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
