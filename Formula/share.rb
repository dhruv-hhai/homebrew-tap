class Share < Formula
  desc "Send folders/files to friends using croc"
  homepage "https://github.com/dhruv-hhai/share"
  url "https://github.com/dhruv-hhai/share/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "0409582dd9fe9870260aa09fd5c62aae638566a304013683a6bfe58b83292306"
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
