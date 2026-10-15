# Rendered into pimlicolabs/homebrew-tap by .github/workflows/cli-release.yml
# on every release, which fills in the version and the sha256 of each
# standalone binary package (@pimlico/cli-<os>-<arch>).
class Pimlico < Formula
  desc "Terminal client and MCP server for Pimlico account abstraction infrastructure"
  homepage "https://docs.pimlico.io"
  version "1.0.0-next.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@pimlico/cli-darwin-arm64/-/cli-darwin-arm64-1.0.0-next.1.tgz"
      sha256 "6fa73f2ae5cecc58389c939da2887dc7ee8c7ab25f204a667779240186ee0d16"
    end
    on_intel do
      url "https://registry.npmjs.org/@pimlico/cli-darwin-x64/-/cli-darwin-x64-1.0.0-next.1.tgz"
      sha256 "f1c82c796a6e22c15ce8adf44aa3de9c89293cc9f736343c96e81b83a390417d"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@pimlico/cli-linux-arm64/-/cli-linux-arm64-1.0.0-next.1.tgz"
      sha256 "d10df29cf765c635fdf561cdeff0ab1689169a4c3d581e65d5dcf5eeb8501926"
    end
    on_intel do
      url "https://registry.npmjs.org/@pimlico/cli-linux-x64/-/cli-linux-x64-1.0.0-next.1.tgz"
      sha256 "4394486a667d63b82587d2890579b0c3c0c9196c628020ead57d916345f79f18"
    end
  end

  def install
    bin.install "bin/pimlico"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pimlico --version")
  end
end
