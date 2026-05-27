cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.17"
  sha256 arm:   "f9d6738c6e2788d64c39c006ea0a03a274ac8891b45e5921a23cdabdbb1e0f1b",
         intel: "14f38cd20e52f76541402be66197669b25b8ede28732675a2f811092ad4a1b4d"

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
