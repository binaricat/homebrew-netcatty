cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.70"
  sha256 arm:   "3e1d757d724b593244e99d3ce79821541a59cfb8564cb79a5ca15ec73003b432",
         intel: "f2d6d11435358341a6fbe1156272cf20c11b835b42a66ec631cf3578de974e8a"

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
