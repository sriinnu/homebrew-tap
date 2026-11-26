class Fiche < Formula
  desc "Cache-safe hybrid optical & deterministic text context compiler + local proxy"
  homepage "https://github.com/sriinnu/fiche"
  url "https://registry.npmjs.org/@sriinnu/fiche/-/fiche-0.19.0.tgz"
  sha256 "f30c71a2bf5d0f9ace416d83511ca8176b3b269d7c667fe446dfefff1a296149"
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
