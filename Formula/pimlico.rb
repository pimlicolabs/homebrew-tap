# Rendered into pimlicolabs/homebrew-tap by .github/workflows/cli-release.yml
# on every release; 1.0.0-next.0 and ef94dd77b986ff37dc2a430f8c0d08ca792ff0b3b0900bf8228951fc27c502a6 are filled in there.
class Pimlico < Formula
  desc "Terminal client and MCP server for Pimlico account abstraction infrastructure"
  homepage "https://docs.pimlico.io"
  url "https://registry.npmjs.org/@pimlico/cli/-/cli-1.0.0-next.0.tgz"
  sha256 "ef94dd77b986ff37dc2a430f8c0d08ca792ff0b3b0900bf8228951fc27c502a6"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pimlico --version")
  end
end
