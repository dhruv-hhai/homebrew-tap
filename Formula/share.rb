class Share < Formula
  desc "Send folders/files to friends using croc"
  homepage "https://github.com/dhruv-hhai/share"
  url "https://github.com/dhruv-hhai/share/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "63819a515f6e545830858418e25c6650591295d1ab7d9843b7419cb44ae02226"
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
