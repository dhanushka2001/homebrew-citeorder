class Citeorder < Formula
  desc "Simple command-line tool to relabel footnotes in Markdown files in numerical order"
  homepage "https://github.com/dhanushka2001/citeorder"
  url "https://github.com/dhanushka2001/citeorder/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "772bd81c56020c9f7eab485bb01f821079eb393cacedd6afe55c999fc7de3494"
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
