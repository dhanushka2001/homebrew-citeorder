class Citeorder < Formula
  desc "Simple command-line tool to relabel footnotes in Markdown files in numerical order"
  homepage "https://github.com/dhanushka2001/citeorder"
  url "https://github.com/dhanushka2001/citeorder/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "2670f355153d2c547849760e8edbb0976d007ac2db5a627816cf94a053c7a74b"
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
