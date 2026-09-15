class Share < Formula
  desc "Send folders/files to friends using croc"
  homepage "https://github.com/dhruv-hhai/share"
  url "https://github.com/dhruv-hhai/share/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "16c8e600980645ddd84a1d12f0b9a2b56fc2ee143995a8e8a5de15b0f9314b98"
  license "MIT"

  depends_on "croc"

  def install
    libexec.install "share", "tools"
    bin.install_symlink libexec/"share"
  end

  test do
    assert_match "send folders/files to friends", shell_output(bin/"share", 1)
  end
end
