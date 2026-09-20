class LoctMcp < Formula
  desc "MCP server for loct structural analysis"
  homepage "https://loct.io"
  version "0.14.5"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/Loctree/loctree-mcp/releases/download/v0.14.5/loct-mcp-darwin-aarch64.tar.gz"
      sha256 "d8fe86e366db1c8a241bb7985dc11df8019f18956357d899e2aeeaf86791df0c"
    end

    on_intel do
      url "https://github.com/Loctree/loctree-mcp/releases/download/v0.14.5/loct-mcp-darwin-x86_64.tar.gz"
      sha256 "2a117f7a1a8ba9b3967519734d4ea77e855a810ebbd06a69387d940c0709877a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Loctree/loctree-mcp/releases/download/v0.14.5/loct-mcp-linux-x86_64.tar.gz"
      sha256 "56d2a0d8e29dc18e1a4fa7e320349be779c5d1891a25b09735137afba5f032f1"
    end
  end

  def install
    bin.install "loct-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loct-mcp --version")
    assert_match "Usage", shell_output("#{bin}/loct-mcp --help")
  end
end
