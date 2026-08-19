cask "loom-agent" do
  version "20260819.9ff69050"
  sha256 arm:   "4c668c1df97ad436c05cf60b8012a78300a47eb7ffcb207a98c8004238a6d712",
         intel: "8cd4ff8672a8747d711b587fe46acabe19d47fb08d42ee11c8c8c946ecab9c70"

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
