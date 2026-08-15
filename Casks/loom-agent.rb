cask "loom-agent" do
  version "20260815.ffef73e6"
  sha256 arm:   "1736a43ff29b29ba7054c0000ed03d00ad9ddc0d16af63be5c9e2d3c399cc627",
         intel: "d777ddc547b25b19dd8f156e83dc3ffbdf0d8afb66c3caa97f534ce98d750087"

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
