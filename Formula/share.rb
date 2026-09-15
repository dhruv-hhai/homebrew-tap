class Share < Formula
  desc "Send folders/files to friends using croc"
  homepage "https://github.com/dhruv-hhai/share"
  url "https://github.com/dhruv-hhai/share/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "47dc874d2274fff45c54acc2b393baf2c16b5344aca79a621e5f7f56eebd1918"
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
