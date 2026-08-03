class Qring < Formula
  desc "Quantum keyring for AI coding tools — secrets, superposition, entanglement, MCP"
  homepage "https://qring.i4c.studio"
  url "https://registry.npmjs.org/@i4ctime/q-ring/-/q-ring-0.14.0.tgz"
  sha256 "75d99ff7a1bfa13b3924d06247f36f35b7823088a3f5f854eecd6a14f90a0740"
  license "AGPL-3.0-only"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    # `qring --version` prints the bare version (Commander default).
    assert_match "0.14.0", shell_output("#{bin}/qring --version")
  end
end
