class Qring < Formula
  desc "Quantum keyring for AI coding tools — secrets, superposition, entanglement, MCP"
  homepage "https://qring.i4c.studio"
  url "https://registry.npmjs.org/@i4ctime/q-ring/-/q-ring-0.17.5.tgz"
  sha256 "46a7e8af9b994ed837bfd5ea091d8a010338c5a69b1dc374dd0703883b27b1ea"
  license "AGPL-3.0-only"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    # `qring --version` prints the bare version (Commander default).
    assert_match "0.17.5", shell_output("#{bin}/qring --version")
  end
end
