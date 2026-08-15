cask "loom-agent" do
  version "20260815.1fc8010d"
  sha256 arm:   "2ccf5721aeae371d6b1845d39d3375a0fbe24e643ddd04154fe0a7286db8eaf0",
         intel: "aaedc6351c196babfef336a368271a61260ff26c95bc914e3ff335a1e04c8c2a"

  url "https://github.com/liubang/playground/releases/download/#{version}/Loom-#{version}-macos-arm64.dmg",
      verified: "github.com/liubang/playground/releases/download/"
  name "Loom Agent"
  desc "Desktop frontend for the Loom AI coding agent"
  homepage "https://loom.liubang.cc"

  livecheck do
    url "https://github.com/liubang/playground/releases"
    strategy :github_latest
  end

  app "Loom.app"

  zap trash: "~/.loom"
end
