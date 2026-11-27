class Fiche < Formula
  desc "Cache-safe hybrid optical & deterministic text context compiler + local proxy"
  homepage "https://github.com/sriinnu/fiche"
  url "https://registry.npmjs.org/@sriinnu/fiche/-/fiche-0.20.1.tgz"
  sha256 "658f9298899f8ca1827556a53345190bbdae52f54e960333ae9c6ae1ea841f67"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fiche --version")

    request = '{"jsonrpc":"2.0","id":1,"method":"initialize","params":' \
              '{"protocolVersion":"2024-11-05","capabilities":{},"clientInfo":{"name":"brew","version":"1"}}}'
    assert_match '"serverInfo"', pipe_output(bin/"fiche-mcp", "#{request}\n")
  end
end
