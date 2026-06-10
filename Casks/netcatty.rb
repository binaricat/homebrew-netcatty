cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.32"
  sha256 arm:   "d431be6540ddfb8fc6e529e46f298cd7997dc56aa9d7709907b5af9d5a466b55",
         intel: "0c185deda397ec6de7a70b8d3f4a30db415fdfc7c8beedebbc7bb4154e6aeac9"

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
