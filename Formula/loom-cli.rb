class LoomCli < Formula
  desc "Production-grade AI coding agent for software engineering tasks"
  homepage "https://loom.liubang.cc"
  version "20260819.9ff69050"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/liubang/playground/releases/download/20260819.9ff69050/loom-darwin-arm64.tar.gz"
      sha256 "bb41c1c1327a3346688b8378a0dc7b48bf23027db3f804fc9d440c19c9ca648a"
    end
    on_intel do
      url "https://github.com/liubang/playground/releases/download/20260819.9ff69050/loom-darwin-amd64.tar.gz"
      sha256 "d4ba62cd08102dadecdd8da8bfc43ffa16d39676dff1d701c53fe76cf569ee2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/liubang/playground/releases/download/20260819.9ff69050/loom-linux-arm64.tar.gz"
      sha256 "b75f6feac0503b4d0550a10505100fd4a1bf5f55bbf6b72c980c23de94fc06e5"
    end
    on_intel do
      url "https://github.com/liubang/playground/releases/download/20260819.9ff69050/loom-linux-amd64.tar.gz"
      sha256 "7b077994389fff1bf8f64f2b01d2ff76cda80142f0437337185e07e948f6e8b1"
    end
  end

  def install
    bin.install "loom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loom version")
  end
end
