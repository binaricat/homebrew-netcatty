cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.57"
  sha256 arm:   "18db68d4ede932013306c134a8905821b2e815b77dc2bf4bc17ffd6ba3809924",
         intel: "4dbcb80eb185342ed5452fa2e9d9fe13b57f0ae493d4dbdcf73ef4986ad242eb"

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
