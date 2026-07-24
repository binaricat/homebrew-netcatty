cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.72"
  sha256 arm:   "6a3eeb54c4d1fa59a19aa07456bcf29b9ff9bf2df66737e1a12fe35617e5019c",
         intel: "1238f22fce163c3f416138af7a636c874e9f0145de3074f8878020fdedd0f1b3"

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
