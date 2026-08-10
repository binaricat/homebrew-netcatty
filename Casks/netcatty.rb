cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.77"
  sha256 arm:   "200045a5bef0e06ad75c10a94d152ac0ad5e187e79997839ae4515502534fcc7",
         intel: "be0ee68f085f8ce653f9c92fc9bd6900722b846b155f332f6acc082f1ff85d6d"

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
