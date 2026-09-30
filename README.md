# CutWire Homebrew Tap

Official Homebrew tap for [Drift](https://github.com/CutWire-Studios/Drift) — the free, open-source desktop video editor.

## Installation

You can install Drift directly via:

```bash
brew install --cask cutwire-studios/tap/drift
```

Or add the tap first and install:

```bash
brew tap cutwire-studios/tap
brew install --cask drift
```

### First Launch on macOS (Gatekeeper Note)

Drift is currently signed ad-hoc and not yet notarized by Apple. If macOS prevents you from opening it with a *"Drift cannot be opened"* warning, run this once in your terminal to clear the quarantine attribute:

```bash
xattr -dr com.apple.quarantine /Applications/Drift.app
```

## Updating

To update Drift to the latest version:

```bash
brew update
brew upgrade --cask drift
```

## Uninstalling

```bash
brew uninstall --cask --zap drift
```
