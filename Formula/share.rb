class Share < Formula
  desc "Send folders/files to friends using croc"
  homepage "https://github.com/dhruv-hhai/share"
  url "https://github.com/dhruv-hhai/share/archive/refs/tags/v2.1.1.tar.gz"
  sha256 "b34394d9dcb6fed34a613b940612d873d8a393ef63aec4269ae617026b34e8bb"
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
