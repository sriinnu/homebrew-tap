class Omit < Formula
  desc "Editorial discipline for AI coding agents: draft less, cite everything, cut last"
  homepage "https://github.com/sriinnu/omit"
  url "https://registry.npmjs.org/@sriinnu/omit/-/omit-0.5.0.tgz"
  sha256 "bfd3aeb586959e082cf3939e7263a6f01e1affd38909c0b0096f0cabbdc1d65a"
  license "MIT"

  depends_on "node"

  def install
    # codemode's sandbox is an optional peer, so npm leaves it out unless it
    # is named, and Node resolves it from this prefix only: one installed
    # globally with npm is not on the path.
    system "npm", "install", *std_npm_args, "@earendil-works/pi-codemode@^1.0.3"
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "usage: omit", shell_output(bin/"omit")
    assert_equal "2\n", pipe_output("#{bin}/omit codemode run", "return 1 + 1")
  end
end
