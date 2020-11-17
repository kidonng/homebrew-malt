class Brigadier < Formula
  desc "Fetch and install Boot Camp ESDs"
  homepage "https://github.com/corpnewt/brigadier"
  url "https://github.com/corpnewt/brigadier/archive/fb1008449428168dcb084be4a691ebafa7403d44.tar.gz"
  sha256 "f68bc524ab14437ce73c346ca69facb2d7ab7e524410b3128bb3d32e40cbe09d"
  license "MIT"
  head "https://github.com/corpnewt/brigadier.git"

  def install
    bin.install "downloader.py"
    bin.install "brigadier.py"
    bin.install "brigadier.command" => "brigadier"
  end
end
