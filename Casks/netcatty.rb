cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.33"
  sha256 arm:   "07a510d504db27edb903f870d8be6b3bbd8e1b9fe014c0c5ca1ff48c24e5bed0",
         intel: "a4128fdc15eccee868c3e8dedbac23b83dd5be0b0aad2faa3c3bf35484fb3a61"

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
