class Ifrextract < Formula
  desc "Extract internal forms represenation from EFI and UEFI modules"
  homepage "https://github.com/LongSoft/Universal-IFR-Extractor"
  url "https://github.com/LongSoft/Universal-IFR-Extractor/archive/0.3.7.tar.gz"
  version "0.3.6"
  sha256 "76b38c5ab7e23f732f1ed4ea9b6183fbf0d9bb5550a6be62326306b45c128b38"
  license "GPL-3.0-only"

  def install
    bin.install "ifrextract"
  end
end
