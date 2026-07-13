cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.65"
  sha256 arm:   "4880d823009223a23deb8e3bf4baca884b60135f82ab90df6f7e2a7b50cf9777",
         intel: "e6c5531ab8d61b6a3e1665ef157f79dee80a4cb525e586b78d3c402871280238"

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
