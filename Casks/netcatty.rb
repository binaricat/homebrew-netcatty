cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.64"
  sha256 arm:   "af8f46938d58472e7cd04f5332646b92b7d9fb61d8c1fc1a00794b11f7022e38",
         intel: "45359d3754f6efe0e964fa3e5ead9f96013fe6c8a0acdbacb16a330b84205167"

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
