cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.16"
  sha256 arm:   "1cea3afbf40a4822bb9e7f08b3814198c0631e2295a560632128b02bc2d21bf1",
         intel: "32bb5ad17492a042b4ab5ee4bee2a41324ed5850d508d48bdf690cc7ef458dfe"

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
