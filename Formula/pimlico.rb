# Rendered into pimlicolabs/homebrew-tap by .github/workflows/cli-release.yml
# on every release, which fills in the version and the sha256 of each
# standalone binary package (@pimlico/cli-<os>-<arch>).
class Pimlico < Formula
  desc "Terminal client and MCP server for Pimlico account abstraction infrastructure"
  homepage "https://docs.pimlico.io"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@pimlico/cli-darwin-arm64/-/cli-darwin-arm64-1.2.0.tgz"
      sha256 "101be2b87dda95449b4454c0cd23a0a4c47ca805de2cb67f5c91f29b298b865f"
    end
    on_intel do
      url "https://registry.npmjs.org/@pimlico/cli-darwin-x64/-/cli-darwin-x64-1.2.0.tgz"
      sha256 "1f1dd21a6afa306dc46c5805e3d0e3ff5c126cc9b0f3be00ccf07400cd58cb9a"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@pimlico/cli-linux-arm64/-/cli-linux-arm64-1.2.0.tgz"
      sha256 "4c80d6afb5b2468680d450a357833474c9e12d05591378a6fc249ce6c777f762"
    end
    on_intel do
      url "https://registry.npmjs.org/@pimlico/cli-linux-x64/-/cli-linux-x64-1.2.0.tgz"
      sha256 "dfd5646707496767579a41e96eec703e66c19ca29d0e4c2f9f588980b8e45eb7"
    end
  end

  def install
    bin.install "bin/pimlico"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pimlico --version")
  end
end
