cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.69"
  sha256 arm:   "abf56d6c745404bf2dfefc7f743df9405baf88751806b0120e8c279c7e4540eb",
         intel: "9ac9b01bc833666a64cbda81cdd01f6f2635a56be14fc251b448f5c0d757a216"

  url "https://github.com/binaricat/Netcatty/releases/download/v#{version}/Netcatty-#{version}-mac-#{arch}.dmg"
  name "Netcatty"
  desc "Modern SSH manager and terminal app"
  homepage "https://github.com/binaricat/Netcatty"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

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
