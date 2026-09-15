class Share < Formula
  desc "Send folders/files to friends using croc"
  homepage "https://github.com/dhruv-hhai/share"
  url "https://github.com/dhruv-hhai/share/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "edf5df4874227ea8ed27529f1975f32ec8f6bb73da7855b710a9191386d643f3"
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
