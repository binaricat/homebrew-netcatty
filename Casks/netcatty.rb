cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.49"
  sha256 arm:   "e63be55efc60e162a353b81e32d65796b592a2fcc418987877cae43bda7fe879",
         intel: "d3bff5ee42a6c4dc2ef0583429923d10771c2ce4dd2a1c2535d7f98688d27632"

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
