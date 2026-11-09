class Share < Formula
  desc "Send folders/files to friends using croc"
  homepage "https://github.com/dhruv-hhai/share"
  url "https://github.com/dhruv-hhai/share/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "24c184ec5daa99322e5ade8556c0daff003ca36fe42f4522bb5b1ec94e86d6c7"
  license "MIT"

  depends_on "croc"

  on_macos do
    depends_on "flock"
  end

  def install
    libexec.install "share", "tools", "lib"
    bin.install_symlink libexec/"share"
  end

  test do
    assert_match "send folders/files to friends", shell_output(bin/"share", 1)
  end
end
