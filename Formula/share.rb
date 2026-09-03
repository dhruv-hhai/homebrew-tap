class Share < Formula
  desc "Send folders/files to friends using croc"
  homepage "https://github.com/dhruv-hhai/share"
  url "https://github.com/dhruv-hhai/share/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "e2feba22e3d7943837500618daa6cae47426138bbd0ca3d01648eeab75eb4d60"
  license "MIT"

  depends_on "croc"

  def install
    libexec.install "share", "tools"
    bin.install_symlink libexec/"share"
  end

  test do
    assert_match "send folders/files to friends", shell_output("#{bin}/share", 1)
  end
end
