# Rendered into pimlicolabs/homebrew-tap by .github/workflows/cli-release.yml
# on every release, which fills in the version and the sha256 of each
# standalone binary package (@pimlico/cli-<os>-<arch>).
class Pimlico < Formula
  desc "Terminal client and MCP server for Pimlico account abstraction infrastructure"
  homepage "https://docs.pimlico.io"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@pimlico/cli-darwin-arm64/-/cli-darwin-arm64-1.1.0.tgz"
      sha256 "10b2fa336a35b51b37c4fabe96af9dcc736c5392f683ea7657f7a6b3b47a6e92"
    end
    on_intel do
      url "https://registry.npmjs.org/@pimlico/cli-darwin-x64/-/cli-darwin-x64-1.1.0.tgz"
      sha256 "b95fa5154853033e843d53e7cce09d84fad3fd3605f42a91884ba85d1395ee5f"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@pimlico/cli-linux-arm64/-/cli-linux-arm64-1.1.0.tgz"
      sha256 "853f3fd50400a183e11a380b266f313b5fd80aed0fe7d6147df076d7cf2c6715"
    end
    on_intel do
      url "https://registry.npmjs.org/@pimlico/cli-linux-x64/-/cli-linux-x64-1.1.0.tgz"
      sha256 "ceff81399886da30b18ba5a1118e8977570a937dcb3510712af2e4f113bb9814"
    end
  end

  def install
    bin.install "bin/pimlico"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pimlico --version")
  end
end
