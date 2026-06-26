cask "netcatty" do
  arch arm: "arm64", intel: "x64"

  version "1.1.46"
  sha256 arm:   "0b6e5e31bd6fadfcfc5aef402bed8c90d749f705eed920169d04bf169abaf21a",
         intel: "9ba606f3acbeb8c514d4a57aa8a447d22953dc6f3459bdd4d493669a284debe9"

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
