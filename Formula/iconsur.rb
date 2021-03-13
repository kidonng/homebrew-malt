class Iconsur < Formula
  desc "Adaptive Icon Generator"
  homepage "https://github.com/rikumi/iconsur"
  url "https://github.com/rikumi/iconsur/releases/download/1.6.2/iconsur"
  sha256 "c37b040f3a7c0728923ee0d998adeddf4d87bc4298c298f83675703a8bda157a"
  license "MIT"

  def install
    bin.install "iconsur"
  end
end
