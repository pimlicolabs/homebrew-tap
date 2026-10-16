# Rendered into pimlicolabs/homebrew-tap by .github/workflows/cli-release.yml
# on every release, which fills in the version and the sha256 of each
# standalone binary package (@pimlico/cli-<os>-<arch>).
class Pimlico < Formula
  desc "Terminal client and MCP server for Pimlico account abstraction infrastructure"
  homepage "https://docs.pimlico.io"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@pimlico/cli-darwin-arm64/-/cli-darwin-arm64-1.0.2.tgz"
      sha256 "72e3e6d4dd664d5c1875beb0c0fe88ed23b75c616cddbb19a028d02ba141f138"
    end
    on_intel do
      url "https://registry.npmjs.org/@pimlico/cli-darwin-x64/-/cli-darwin-x64-1.0.2.tgz"
      sha256 "14b0c498194830af9ef350f27410b683260c2a22957b0aa94e3e15387774dcdb"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@pimlico/cli-linux-arm64/-/cli-linux-arm64-1.0.2.tgz"
      sha256 "7f480ffd4b5feba5efd6be32859255ff0771dc0abd5f10b4ed33ad55c19f944e"
    end
    on_intel do
      url "https://registry.npmjs.org/@pimlico/cli-linux-x64/-/cli-linux-x64-1.0.2.tgz"
      sha256 "d2b44e04bdfe34915c41ac5815eaca6be705b61313fb21aa70bfa1a16ff00434"
    end
  end

  def install
    bin.install "bin/pimlico"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pimlico --version")
  end
end
