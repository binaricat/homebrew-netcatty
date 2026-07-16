cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.68"
  sha256 arm:   "17df51fb42a0cc96e69120bc29e0f2b7a5a0b78ea09dcf680a0c7a0a918d148b",
         intel: "4e4eaa1fab44de3cd55a261186bc02e2d9705fcc9115ab1449bebb7bb93fb77f"

  url "https://github.com/binaricat/Netcatty/releases/download/v#{version}/Netcatty-#{version}-mac-#{arch}.dmg"
  name "Netcatty"
  desc "Modern SSH manager and terminal app"
  homepage "https://github.com/binaricat/Netcatty"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

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
