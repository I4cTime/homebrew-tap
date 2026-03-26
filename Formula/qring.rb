class Qring < Formula
  desc "Quantum keyring for AI coding tools — secrets, superposition, entanglement, MCP"
  homepage "https://qring.i4c.studio"
  url "https://registry.npmjs.org/@i4ctime/q-ring/-/q-ring-0.9.5.tgz"
  sha256 "fd8416691cb2043db406e84f5b7ea21ff437a91d198504ef1073e9337f26c53f"
  license "AGPL-3.0-only"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "qring", shell_output("#{bin}/qring --version")
  end
end
