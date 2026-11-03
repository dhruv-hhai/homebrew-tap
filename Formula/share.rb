class Share < Formula
  desc "Send folders/files to friends using croc"
  homepage "https://github.com/dhruv-hhai/share"
  url "https://github.com/dhruv-hhai/share/archive/refs/tags/v2.0.1.tar.gz"
  sha256 "fa3b0cbb2bf6796b20722833c59a93763a55e343b7a32d165889fbb6a524e40b"
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
