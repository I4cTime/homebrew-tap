class Qring < Formula
  desc "Quantum keyring for AI coding tools — secrets, superposition, entanglement, MCP"
  homepage "https://qring.i4c.studio"
  url "https://registry.npmjs.org/@i4ctime/q-ring/-/q-ring-0.16.1.tgz"
  sha256 "593b9bedca3b58cd973c172b8683479d6e5b893b0fa8ac7c97b660e008600c0b"
  license "AGPL-3.0-only"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    # `qring --version` prints the bare version (Commander default).
    assert_match "0.16.1", shell_output("#{bin}/qring --version")
  end
end
