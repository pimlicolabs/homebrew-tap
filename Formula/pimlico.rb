# Rendered into pimlicolabs/homebrew-tap by .github/workflows/cli-release.yml
# on every release, which fills in the version and the sha256 of each
# standalone binary package (@pimlico/cli-<os>-<arch>).
class Pimlico < Formula
  desc "Terminal client and MCP server for Pimlico account abstraction infrastructure"
  homepage "https://docs.pimlico.io"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@pimlico/cli-darwin-arm64/-/cli-darwin-arm64-1.0.1.tgz"
      sha256 "79453e4dc5de36d3cb3b51369f8ad030a3c1ac53c2ab5dea13c57c541af75f64"
    end
    on_intel do
      url "https://registry.npmjs.org/@pimlico/cli-darwin-x64/-/cli-darwin-x64-1.0.1.tgz"
      sha256 "33bdac02abf5393c52a3fa783f96c1e7f48e7f915bf87395a5b8baab3d73c4ed"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@pimlico/cli-linux-arm64/-/cli-linux-arm64-1.0.1.tgz"
      sha256 "9a8723914a86deea5c8ecfe8205b1e19dee0aec68de404afc7084d9ace24ae59"
    end
    on_intel do
      url "https://registry.npmjs.org/@pimlico/cli-linux-x64/-/cli-linux-x64-1.0.1.tgz"
      sha256 "7526886f50af6ee65d273aa066349e45b8a7b6ce9f03130e48754d724b9a6720"
    end
  end

  def install
    bin.install "bin/pimlico"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pimlico --version")
  end
end
