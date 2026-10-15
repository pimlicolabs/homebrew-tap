# Rendered into pimlicolabs/homebrew-tap by .github/workflows/cli-release.yml
# on every release, which fills in the version and the sha256 of each
# standalone binary package (@pimlico/cli-<os>-<arch>).
class Pimlico < Formula
  desc "Terminal client and MCP server for Pimlico account abstraction infrastructure"
  homepage "https://docs.pimlico.io"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@pimlico/cli-darwin-arm64/-/cli-darwin-arm64-1.0.0.tgz"
      sha256 "c5bea1926de27bcb7641f24c7213a887cde91ddcee70904c61242bcb224d1681"
    end
    on_intel do
      url "https://registry.npmjs.org/@pimlico/cli-darwin-x64/-/cli-darwin-x64-1.0.0.tgz"
      sha256 "8f1e6127bcf7c0f9a8f026e358e4a8f1f70d2bed9f22cf74eb555126226c26e2"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@pimlico/cli-linux-arm64/-/cli-linux-arm64-1.0.0.tgz"
      sha256 "2a1fd8f23b96965bfd12f1ef4dc3b1a2299984d0603368a95ea3b1a3b40f8d56"
    end
    on_intel do
      url "https://registry.npmjs.org/@pimlico/cli-linux-x64/-/cli-linux-x64-1.0.0.tgz"
      sha256 "dd0b001c6fcd13038ddf4576d7813c31ed81a3c8ab0210e7a8ad36d02eeb69ba"
    end
  end

  def install
    bin.install "bin/pimlico"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pimlico --version")
  end
end
