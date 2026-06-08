cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.27"
  sha256 arm:   "509efb43c98d80ca308860fedae06ce31d1065725a39f27425e0e74acc2d5192",
         intel: "b4b0f73133dfd15cb23aa9cb0cd5b7c8326753903eb3c42e39c77338c71fd0f4"

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
