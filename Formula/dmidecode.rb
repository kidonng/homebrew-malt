class Dmidecode < Formula
  desc "DMI table decoder (with support for Apple/macOS)"
  homepage "https://github.com/acidanthera/dmidecode"
  url "https://github.com/acidanthera/dmidecode/releases/download/3.3b/dmidecode-mac-3.3b.zip"
  sha256 "863537f5cef9f24815fecf6ed22373547c048d1b620ec0245efaa807bd16c366"
  license "GPL-2.0-only"

  def install
    bin.install "dmidecode"
  end
end
