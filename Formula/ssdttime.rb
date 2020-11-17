class Ssdttime < Formula
  desc "SSDT/DSDT hotpatch tool"
  homepage "https://github.com/corpnewt/SSDTTime"
  url "https://github.com/corpnewt/SSDTTime/archive/44ca790b38b7660755600f9fea741ec064714271.tar.gz"
  sha256 "1b3974fcb1a7bca05b468e686fa5466121d4db5685a52859d4cf3ac8c2f89c4d"
  license "MIT"
  head "https://github.com/corpnewt/SSDTTime.git"

  def install
    bin.install "Scripts"
    bin.install "SSDTTime.py"
    bin.install "SSDTTime.command" => "ssdttime"
  end
end
