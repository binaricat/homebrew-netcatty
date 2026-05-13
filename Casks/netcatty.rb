cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.5"
  sha256 arm:   "a6b7b6cfd9eee8dca7bd96e129b5a6b473742b8dfd9ee238a04632cc20279b29",
         intel: "2999a8ec2aface6f7d29cb48fdf05e485b1bfc710d31d472c1d4ff5ee28c5920"

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
