cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.90"
  sha256 arm:   "f916f728a5d65f0909d7ca8a693d53f821fb3c28064ce068370bb60066d226a1",
         intel: "4a0ffcfcdffa37ac96ff80d6b656d44ea6a96a8c0e1ed5c12c954fdac7de4947"

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
