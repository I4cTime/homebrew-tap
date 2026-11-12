class Qring < Formula
  desc "Quantum keyring for AI coding tools — secrets, superposition, entanglement, MCP"
  homepage "https://qring.i4c.studio"
  url "https://registry.npmjs.org/@i4ctime/q-ring/-/q-ring-0.19.1.tgz"
  sha256 "a0220f0a4a3e7b253247f6a207b7aea69196b0355bf51f4de834b939c4bf71d8"
  license "AGPL-3.0-only"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    # `qring --version` prints the bare version (Commander default).
    assert_match "0.19.1", shell_output("#{bin}/qring --version")
  end
end
