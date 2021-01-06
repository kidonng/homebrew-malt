class Dmidecode < Formula
  desc "DMI table decoder (with support for Apple/macOS)"
  homepage "https://github.com/acidanthera/dmidecode"
  url "https://github.com/acidanthera/dmidecode/releases/download/3.3a/dmidecode-mac-3.3a.zip"
  sha256 "d2177cd1c25e1adc058ced2a785392e0cb3622edbcb94606daeaf4c00c0667c6"
  license "GPL-2.0-only"

  def install
    bin.install "dmidecode"
  end
end
