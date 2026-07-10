cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.63"
  sha256 arm:   "7c8ece9df295fce68dc9d91b5d650a5696ab8bb032d53b2d417e926f3a7bac55",
         intel: "181848bbe3ef104fbe02a02af13954b0499db04c300ac75d8bc5be6a85da08e7"

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
