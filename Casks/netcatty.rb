cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.37"
  sha256 arm:   "9dab379376130ca0b31bd1a0ffee610c8555a00be831648ae00c94d90da073dc",
         intel: "770d702db05c213f40fc47df8553b5f8f6433a1ac4a7c9d86c3f7dcd6a0a757a"

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
