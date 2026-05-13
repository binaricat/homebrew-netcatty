# homebrew-netcatty

Homebrew tap for [Netcatty](https://github.com/binaricat/Netcatty) — a modern SSH manager and terminal app with host grouping, SFTP, keychain, port forwarding, and a rich UI.

## Install

```bash
brew install binaricat/netcatty/netcatty
```

That's it. Subsequent `brew upgrade` will pick up new releases automatically.

## What this tap does

This tap distributes the official, Developer ID-signed and Apple-notarized macOS build of Netcatty. The Cask file points at the same `.dmg` artifacts published to the [Netcatty GitHub Releases](https://github.com/binaricat/Netcatty/releases), so installing through Homebrew gives you the exact same bits you'd get from a direct download — just managed through `brew`.

Both Apple Silicon (`arm64`) and Intel (`x86_64`) builds are supported; Homebrew picks the right one for your Mac automatically.

## Updates

The Cask is bumped by CI on every Netcatty release tag, so `brew upgrade` will stay current within minutes of a new release. The app's built-in updater (`electron-updater`) also continues to work — if you'd rather Homebrew be the single source of truth for upgrades, you can ignore the in-app prompt.

## Issues

For app bugs, please file at [binaricat/Netcatty/issues](https://github.com/binaricat/Netcatty/issues). For problems with the Cask itself (wrong sha256, install failure, etc.), open an issue here.

## License

Netcatty is released under GPL-3.0. The Cask file in this repository is released under the BSD 2-Clause License, matching Homebrew's convention for tap repositories.
