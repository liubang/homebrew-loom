cask "loom-agent" do
  version "20260829.cdf9035c"
  sha256 arm:   "26dd37fad16b4090af34fb41e4471c04851409517a399a6d2017a55ae13822ac",
         intel: "95a3ed026713b9dbdc57ddb81afbd24e47f31f1c7efd1688af7b5478a188450e"

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
  no_quarantine

  zap trash: "~/.loom"
end
