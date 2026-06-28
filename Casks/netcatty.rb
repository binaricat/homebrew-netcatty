cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.48"
  sha256 arm:   "d501e0a039da837d98ff70dd6553ff494c79c1bd55f3adf01d593581672a3609",
         intel: "0c03de3478a8892feef30a3a2d75536eaa5cb509bb82ef06cf343b5f6daaeb2b"

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
