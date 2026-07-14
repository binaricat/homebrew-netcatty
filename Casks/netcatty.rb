cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.66"
  sha256 arm:   "86925b4506f4ce36de1504f88ad573de727b4b5905af5a8f602bd6fc2db310bc",
         intel: "f3345c1fa102bb0b2522a9a67caa974356d625371887880ae9f9a46bdf60c6ba"

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
