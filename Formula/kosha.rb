class Kosha < Formula
  desc "AI model registry: discover models, pricing, routes and spend across providers"
  homepage "https://github.com/sriinnu/kosha-discovery"
  url "https://registry.npmjs.org/@sriinnu/kosha-discovery/-/kosha-discovery-1.15.1.tgz"
  sha256 "6443865950c5c5ac7d6728f4654180af98c08f2853bee8b9e52c363cfa21f980"
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
