class Qring < Formula
  desc "Quantum keyring for AI coding tools — secrets, superposition, entanglement, MCP"
  homepage "https://qring.i4c.studio"
  url "https://registry.npmjs.org/@i4ctime/q-ring/-/q-ring-0.10.1.tgz"
  sha256 "d0fdc7335ed919e7e231abbdfa056ac657fbbac06a7942ead7db457f0d9ca1ef"
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
