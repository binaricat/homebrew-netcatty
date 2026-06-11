cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.35"
  sha256 arm:   "f912eade80ce6d4955f8eb801e5c3ee6ce26b2c3dd444b94f656c921cb5adc94",
         intel: "fe70aee86c97b177fa9b2f614057731e0d4ff7dc5142c2bbc944e2a69bfc95ec"

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
