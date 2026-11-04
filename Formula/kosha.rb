class Kosha < Formula
  desc "AI model registry: discover models, pricing, routes and spend across providers"
  homepage "https://github.com/sriinnu/kosha-discovery"
  url "https://registry.npmjs.org/@sriinnu/kosha-discovery/-/kosha-discovery-1.13.0.tgz"
  sha256 "13ec2482bfb0cbde6174371ecb2b6a0efa3aaf635a0be9d78aaa4c5bd2e2ddde"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kosha --version")

    request = '{"jsonrpc":"2.0","id":1,"method":"initialize","params":' \
              '{"protocolVersion":"2024-11-05","capabilities":{},"clientInfo":{"name":"brew","version":"1"}}}'
    assert_match '"serverInfo"', pipe_output(bin/"kosha-mcp", "#{request}\n")
  end
end
