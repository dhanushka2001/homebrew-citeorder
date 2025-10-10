class Citeorder < Formula
  desc "Simple command-line tool that reorders footnotes in Markdown"
  homepage "https://github.com/dhanushka2001/citeorder"
  url "https://github.com/dhanushka2001/citeorder/archive/refs/tags/v1.1.tar.gz"
  sha256 "0afcb3f7e63f159f75b299485353ff839bf8c35e933d6e58c4fc01f6347aeb15"
  license "GPL-3.0"

  def install
    # Compile the C source
    system "cc", "citeorder.c", "-o", "citeorder"
    # Install the binary
    bin.install "citeorder"
  end

  test do
    # Minimal test to confirm installation
    system "#{bin}/citeorder", "-v"
  end
end
