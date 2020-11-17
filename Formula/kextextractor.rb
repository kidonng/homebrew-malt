class Kextextractor < Formula
  desc "Extract/copy a folder of kexts or zips to a target EFI partition"
  homepage "https://github.com/corpnewt/KextExtractor"
  url "https://github.com/corpnewt/KextExtractor/archive/05e134cf91a505b6caa9079404006d670d7de586.tar.gz"
  sha256 "ee980c2ec5e1568fa1004d906d574e6d564b397c6c6b3f9b5503d6734a5e7b4c"
  license "MIT"
  head "https://github.com/corpnewt/KextExtractor.git"

  def install
    bin.install "Scripts"
    bin.install "KextExtractor.command" => "kextextractor"
  end
end
