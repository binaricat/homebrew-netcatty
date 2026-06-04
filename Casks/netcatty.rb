cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.21"
  sha256 arm:   "50b25b689e7b6c2d9a1d9bbff60a4ad06c2be1109c0bd92b902bb9c5499f411c",
         intel: "11bd717f547261099bcac68f323e4c80ce067b3f97995db77eb204bd7863007d"

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
