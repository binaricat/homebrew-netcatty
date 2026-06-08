cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.27"
  sha256 arm:   "9dfccfe15050e0b14e8759db222c345378511c2f952f2fd5b580c99e137cca7a",
         intel: "ba9639a46ac7b01d8dbd7282bd788d55f1fd6b963df6ed13bb765e796b17232a"

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
