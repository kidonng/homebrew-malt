class Ssdttime < Formula
  desc "SSDT/DSDT hotpatch tool"
  homepage "https://github.com/corpnewt/SSDTTime"
  url "https://github.com/corpnewt/SSDTTime.git",
      revision: "109d015d10d9792fe803f8ab9e08359587e65e36"
  version "109d015"
  license "MIT"
  head "https://github.com/corpnewt/SSDTTime.git"

  def install
    bin.install "Scripts"
    bin.install "SSDTTime.py"
    bin.install "SSDTTime.command" => "ssdttime"
  end
end
