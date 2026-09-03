class Share < Formula
  desc "Send folders/files to friends using croc"
  homepage "https://github.com/dhruv-hhai/share"
  url "https://github.com/dhruv-hhai/share/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "39ea0fa88a645897b601009a370c260b05a79bc14f482cd44ca3f4f7d2ec5142"
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
