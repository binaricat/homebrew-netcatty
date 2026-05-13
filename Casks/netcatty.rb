cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.6"
  sha256 arm:   "8960a8f951f7da67993d25671f2735edbf960ae4d2d78bf675c2cd9a43fa4387",
         intel: "eb822aba8d6678b3fd5be080d916f8a8727d959c71fdf9cc180654c160f2d46d"

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
