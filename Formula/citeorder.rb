class Citeorder < Formula
  desc "Simple command-line tool to relabel footnotes in Markdown files in numerical order"
  homepage "https://github.com/dhanushka2001/citeorder"
  url "https://github.com/dhanushka2001/citeorder/archive/refs/tags/v0.0.0-test6.tar.gz"
  sha256 "f4a0303958020a79d4949e71fcbc02ad9013e39111d25ac51e1c7a6e55a62b33"
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
