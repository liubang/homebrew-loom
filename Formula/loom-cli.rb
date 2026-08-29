class LoomCli < Formula
  desc "Production-grade AI coding agent for software engineering tasks"
  homepage "https://loom.liubang.cc"
  version "20260829.cdf9035c"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/liubang/playground/releases/download/20260829.cdf9035c/loom-darwin-arm64.tar.gz"
      sha256 "25b6d10ef93d29b0e9a57d67073b7365537ddaafd03842f3c66e4b8a6cebe44a"
    end
    on_intel do
      url "https://github.com/liubang/playground/releases/download/20260829.cdf9035c/loom-darwin-amd64.tar.gz"
      sha256 "4fdf3a05fe1ea0d01d79a7678f8ca89b9fdaef82bf128cefc372bef27a0807a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/liubang/playground/releases/download/20260829.cdf9035c/loom-linux-arm64.tar.gz"
      sha256 "2ca83d7fedcd00678c81a9afb02aea68e0424004e565e843ac04505d11eda8ef"
    end
    on_intel do
      url "https://github.com/liubang/playground/releases/download/20260829.cdf9035c/loom-linux-amd64.tar.gz"
      sha256 "a0f854a7430c9a356c7476d7e6870cd9bc955a115f8c1d6846f987ebbea1f286"
    end
  end

  def install
    bin.install "loom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loom version")
  end
end
