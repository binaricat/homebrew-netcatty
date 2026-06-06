cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.22"
  sha256 arm:   "a70ae0402e13f462bc5d32a19e9a3df719128cc64e62d5f776ab1cdf3cb5a4a9",
         intel: "b770be9880774c3d37f783d75f1eea429248b1680813ad23a08da4a6ba920493"

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
