cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.58"
  sha256 arm:   "ba43d04eacbd9854487e7c8a72dc2c38c9a72935f2bc0b353b6ecbb585918d49",
         intel: "488a01f0d6cd35cb3533684366436cf15d72f9e72017948338bddfa285fd0268"

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
