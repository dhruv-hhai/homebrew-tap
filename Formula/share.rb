class Share < Formula
  desc "Send folders/files to friends using croc"
  homepage "https://github.com/dhruv-hhai/share"
  url "https://github.com/dhruv-hhai/share/archive/refs/tags/v2.2.1.tar.gz"
  sha256 "0688d4fb425ecebcae6cf031bf0cdeee8dc0a1aaa82f500a91997d4d163339f2"
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
