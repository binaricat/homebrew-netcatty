cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.69"
  sha256 arm:   "e360b5b062c6059dccc0e12d36ad38bd5f13ca4b6a5bd814b0fad27e681bcfd4",
         intel: "983760ba94639c762b47d03e471188690e1709c35d38b0726cc2da37959a0c6b"

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
