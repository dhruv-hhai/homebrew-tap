class Share < Formula
  desc "Send folders/files to friends using croc"
  homepage "https://github.com/dhruv-hhai/share"
  url "https://github.com/dhruv-hhai/share/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "1302562ffc64435b9e0c9c7f475df6cec32fe76a28a1b0cd30b1ff23c62228e3"
  license "MIT"

  depends_on "croc"

  def install
    libexec.install "share", "tools", "lib"
    bin.install_symlink libexec/"share"
  end

  test do
    assert_match "send folders/files to friends", shell_output(bin/"share", 1)
  end
end
