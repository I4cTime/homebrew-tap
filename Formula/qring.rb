class Qring < Formula
  desc "Quantum keyring for AI coding tools — secrets, superposition, entanglement, MCP"
  homepage "https://qring.i4c.studio"
  url "https://registry.npmjs.org/@i4ctime/q-ring/-/q-ring-0.9.7.tgz"
  sha256 "7e0ec6c5a8f57b88d325604555559f79feb4442a7a4452ce5b519a6ad5541956"
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
