class Qring < Formula
  desc "Quantum keyring for AI coding tools — secrets, superposition, entanglement, MCP"
  homepage "https://qring.i4c.studio"
  url "https://registry.npmjs.org/@i4ctime/q-ring/-/q-ring-0.9.4.tgz"
  sha256 "9c9bb4f945a42580ff8e59de5a5cc462732a0daab5e4fa35560e5acccb5ff76c"
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
