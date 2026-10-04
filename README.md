# homebrew-tap

Homebrew tap for [Space Disk Free](https://github.com/guilhermehrcosta/space-disk-free), a macOS menu bar app that shows what uses disk space and cleans it up.

## Install

```sh
brew install --cask guilhermehrcosta/tap/space-disk-free
```

The app is not signed with an Apple Developer ID, so macOS blocks its first launch. Open the app once, then go to **System Settings › Privacy & Security** and click **Open Anyway**.

## Update and uninstall

```sh
brew upgrade --cask space-disk-free
brew uninstall --cask space-disk-free
brew uninstall --cask --zap space-disk-free
```

`--zap` also removes the app's preferences and caches.

The cask is updated automatically by the [release workflow](https://github.com/guilhermehrcosta/space-disk-free/blob/main/.github/workflows/release.yml) whenever a new version is published.
