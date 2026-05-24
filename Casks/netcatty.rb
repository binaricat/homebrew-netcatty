cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.12"
  sha256 arm:   "107d0348ca85b8f710161afdcf6704c77d5fd0ebcc85dd8b8f1a60933d61384e",
         intel: "76d8b243c4b8574ad04b9f96d714da8988236a755abf1b8cda10499d71ab371f"

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
