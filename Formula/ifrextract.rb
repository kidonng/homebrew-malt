class Ifrextract < Formula
  desc "Extract internal forms represenation from EFI and UEFI modules"
  homepage "https://github.com/LongSoft/Universal-IFR-Extractor"
  version "0.3.7"
  url "https://github.com/LongSoft/Universal-IFR-Extractor/releases/download/#{version}/ifrextract_v#{version}.mac.zip"
  sha256 "f182844333bbe997c997c0869e139d3864775d6c9fa23f8295717679860575f7"
  license "GPL-3.0-only"

  def install
    bin.install "ifrextract"
  end
end
