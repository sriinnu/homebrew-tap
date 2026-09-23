class Omit < Formula
  desc "Editorial discipline for AI coding agents: draft less, cite everything, cut last"
  homepage "https://github.com/sriinnu/omit"
  url "https://registry.npmjs.org/@sriinnu/omit/-/omit-0.4.1.tgz"
  sha256 "50b1a192a3ee8e1f011de41c6497f1cc1b76da0d624046d8b4a630d28c41d479"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "usage: omit", shell_output(bin/"omit")
  end
end
