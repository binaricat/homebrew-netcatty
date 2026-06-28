cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.48"
  sha256 arm:   "12697e00a621579af89e8f6301b93c3ed785204a0c4553a22c199e6dc71f403c",
         intel: "2bcd3f2286fccd74239717026e1199c86d6a7f1bacf54dc5f2cd5b9cbd7108a1"

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
