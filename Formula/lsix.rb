class Lsix < Formula
  desc "Shows thumbnails in terminal using sixel graphics"
  homepage "https://github.com/hackerb9/lsix"
  url "https://github.com/hackerb9/lsix/archive/1.7.3.tar.gz"
  sha256 "88f1855b0272a307758d344a861370c087432ed8f28cc95696659eb0ed7eb960"
  license "GPL-3.0-only"

  depends_on "bash"
  depends_on "imagemagick"

  def install
    bin.install "lsix"
  end
end
