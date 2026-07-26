cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.73"
  sha256 arm:   "10dcfb7746b94c7db7f87e03dabf49a56e648e9be90e83cfd3ce418c96e55ae1",
         intel: "636f6ae026a3a69fe226de80929495a85b1fd53fda487e2e8d752e8b44d279e8"

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
