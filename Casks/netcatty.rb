cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.82"
  sha256 arm:   "57f9bcfe1c1fd297c2f2599715d9ffdf49d8cf8d0d7c8374a54509980078c07d",
         intel: "4d12a63eda1c138e204eab87b1008f98b3e1a197c67924c2cb92332ed31a49e8"

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
