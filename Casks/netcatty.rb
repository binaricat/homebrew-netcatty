cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.62"
  sha256 arm:   "3d353955263f26cd18612da4e1f22fbb8a2b9eb623eff594b9877a0a7ef0de97",
         intel: "5db07c3796a3de6191a9c1b13eed079a53a74e6562e579e8c6f647150e11d15e"

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
