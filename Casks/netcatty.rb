cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.83"
  sha256 arm:   "daedb8c5b9ba2478379979249f6f23d6a617d4f362b0c50ea72fd57bf24289d9",
         intel: "af014f7c2ab94047cb79380dd6556b7f31771d4e9b2ca636e46445ba691d33a5"

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
