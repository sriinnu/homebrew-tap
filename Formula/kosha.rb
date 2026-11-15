class Kosha < Formula
  desc "AI model registry: discover models, pricing, routes and spend across providers"
  homepage "https://github.com/sriinnu/kosha-discovery"
  url "https://registry.npmjs.org/@sriinnu/kosha-discovery/-/kosha-discovery-1.16.0.tgz"
  sha256 "168451c0382365a24710221818edca84806c9d7b6948b4eeb4eb111f62b27759"
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
