cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.53"
  sha256 arm:   "cda907ad5fc86126b0c42396aabb904c48d4f2a7eac7adf48d393a5e7ea3c30e",
         intel: "810c0ed0767c9cc8d87c8046b8c1a027c6e1b7b7ae681e8152f62193a356847c"

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
