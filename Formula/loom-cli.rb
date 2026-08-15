class LoomCli < Formula
  desc "Production-grade AI coding agent for software engineering tasks"
  homepage "https://loom.liubang.cc"
  version "20260815.1fc8010d"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/liubang/playground/releases/download/20260815.1fc8010d/loom-darwin-arm64.tar.gz"
      sha256 "b5367086e1b362b93025301633289d39a0884e56dc3ff752c6d04e88e4cfe5a1"
    end
    on_intel do
      url "https://github.com/liubang/playground/releases/download/20260815.1fc8010d/loom-darwin-amd64.tar.gz"
      sha256 "3796a9c71fd8f6fe308e4bab7fd982ac15e9a137c7f4a96dce6c29f656ebe0d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/liubang/playground/releases/download/20260815.1fc8010d/loom-linux-arm64.tar.gz"
      sha256 "c69a866b54b0c1011005ef03203c17a8069330760c0c8af3ca0133ab507409f8"
    end
    on_intel do
      url "https://github.com/liubang/playground/releases/download/20260815.1fc8010d/loom-linux-amd64.tar.gz"
      sha256 "b55de2a4d405e1bdc17afd62744fc7b2b90fdb187aed10f83dbe1062b88b030d"
    end
  end

  def install
    bin.install "loom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loom version")
  end
end
