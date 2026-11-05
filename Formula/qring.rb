class Qring < Formula
  desc "Quantum keyring for AI coding tools — secrets, superposition, entanglement, MCP"
  homepage "https://qring.i4c.studio"
  url "https://registry.npmjs.org/@i4ctime/q-ring/-/q-ring-0.19.0.tgz"
  sha256 "ca623e8d289b9aa81e1f774a1f744be2c5ffdd0bafcff04f013d4ba5e4643830"
  license "AGPL-3.0-only"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    # `qring --version` prints the bare version (Commander default).
    assert_match "0.19.0", shell_output("#{bin}/qring --version")
  end
end
