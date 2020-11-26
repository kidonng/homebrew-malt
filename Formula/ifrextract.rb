class Ifrextract < Formula
  desc "Extract internal forms represenation from EFI and UEFI modules"
  homepage "https://github.com/LongSoft/Universal-IFR-Extractor"
  url "https://github.com/LongSoft/Universal-IFR-Extractor/releases/download/v0.3.6/ifrextract_v0.3.6.osx.zip"
  version "0.3.6"
  sha256 "9255e034efa54fed1c5f379d1f5ba34128a87f55794fb7a70e6f0ee562b4cafa"
  license "GPL-3.0-only"

  def install
    bin.install "ifrextract"
  end
end
