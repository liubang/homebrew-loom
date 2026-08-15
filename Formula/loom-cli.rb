class LoomCli < Formula
  desc "Production-grade AI coding agent for software engineering tasks"
  homepage "https://loom.liubang.cc"
  version "20260815.ffef73e6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/liubang/playground/releases/download/20260815.ffef73e6/loom-darwin-arm64.tar.gz"
      sha256 "b5afafa88046d059031589d5cc2a65a7b8e4c5f5409d4ec0457f1e7bad0ce0d5"
    end
    on_intel do
      url "https://github.com/liubang/playground/releases/download/20260815.ffef73e6/loom-darwin-amd64.tar.gz"
      sha256 "7a76226090eb30bba55e8a795b29786c824fa8b187aa2dcb72ac5198d37cdf8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/liubang/playground/releases/download/20260815.ffef73e6/loom-linux-arm64.tar.gz"
      sha256 "ce763d9eda65053a961c0755da18096e0d07359695bffb9b97b0a1ecaffbf97b"
    end
    on_intel do
      url "https://github.com/liubang/playground/releases/download/20260815.ffef73e6/loom-linux-amd64.tar.gz"
      sha256 "9df95399b850dbe93302e01f15c9a6fe15a5950019f7b2ca8843bddb555f7301"
    end
  end

  def install
    bin.install "loom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loom version")
  end
end
