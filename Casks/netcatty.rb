cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.43"
  sha256 arm:   "98ec261c17b8b382ef28f0c4982eaef818f231df3eded140e488231988fbb565",
         intel: "8da4e777701fe453e7dece46cc606ab3a3ef0ecb00a3bd797a4a83303e7ceef4"

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
