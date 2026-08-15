# homebrew-loom

Homebrew tap for [Loom](https://loom.liubang.cc) — a production-grade AI coding agent.

## Install CLI

```bash
brew tap liubang/loom
brew install loom-cli
```

## Install desktop app (macOS)

```bash
brew tap liubang/loom
brew install --cask loom-agent
```

## Release process

1. Bump `version` + `sha256` in `Formula/loom.rb` and `Cask/loom-agent.rb`.
2. Create a GitHub Release on `liubang/playground` tagged `<version>` with artifacts:
   - `loom-darwin-arm64.tar.gz`, `loom-darwin-amd64.tar.gz`
   - `loom-linux-arm64.tar.gz`, `loom-linux-amd64.tar.gz`
   - `Loom-<version>-macos-arm64.dmg`, `Loom-<version>-macos-x86_64.dmg`

Build artifacts with:

```bash
bazel build //go/pl/loom/cmd/loom --config=release        # CLI
bazel run --config=desktop //go/pl/loom/cmd/loom-desktop:package_app  # desktop → dist/Loom.app + DMG
```

Compute sha256 with `shasum -a 256 <file>`.
