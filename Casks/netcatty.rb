cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.70"
  sha256 arm:   "71cb6969222400dbcb2b177fa2e6a4220236fd5cbf37f7217f6509e2591813ae",
         intel: "8522a743c682e25c8e3c9d32d7bbe55ab3807ea962fde9deace101429075ca5b"

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
