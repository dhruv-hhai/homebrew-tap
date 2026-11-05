class Share < Formula
  desc "Send folders/files to friends using croc"
  homepage "https://github.com/dhruv-hhai/share"
  url "https://github.com/dhruv-hhai/share/archive/refs/tags/v2.0.2.tar.gz"
  sha256 "2042302e4c1ba9c100d004db934da47720654798387e4bc561cc08a0900b7fc1"
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
