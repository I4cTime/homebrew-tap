class Qring < Formula
  desc "Quantum keyring for AI coding tools — secrets, superposition, entanglement, MCP"
  homepage "https://qring.i4c.studio"
  url "https://registry.npmjs.org/@i4ctime/q-ring/-/q-ring-0.9.3.tgz"
  sha256 "089b79eec794af0380f8900708ed3cbf89457c8fc5ac6b98e9bad21b8259f9d4"
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
