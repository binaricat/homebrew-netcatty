cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.18"
  sha256 arm:   "2c777aa1d5b97a09ef86befa4a4d40639d6db955a0a0a1bc4a4a59653bfa2674",
         intel: "3ee3541fa8e11eedfe5ca056713500840a805a2b2f81e9769693762c04b44559"

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
