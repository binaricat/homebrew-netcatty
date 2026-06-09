cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.28"
  sha256 arm:   "f0e78dabd2c6bac93227c0f60b4aaa94c931c576a290ab366e07d8a1f1c1a58e",
         intel: "645f56e24908b1b250ce4306f9280874be11eb2d3acadf5843f080da19933b19"

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
