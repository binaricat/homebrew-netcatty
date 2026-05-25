cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.14"
  sha256 arm:   "f7d9939d9d2610646666cbd47dbd8fa1d75a6e49c0a5c6fb8374d4465d0b8ebb",
         intel: "5de71a4654dc68bce5dbb3ff7da0b64c879847777d1a0c2cfda0b69dae3432b4"

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
