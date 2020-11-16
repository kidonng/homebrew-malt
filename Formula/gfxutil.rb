class Gfxutil < Formula
  desc "Device Properties conversion tool"
  homepage "https://github.com/acidanthera/gfxutil"
  url "https://github.com/acidanthera/gfxutil/releases/download/1.80b/gfxutil-1.80b-RELEASE.zip"
  sha256 "2aecb08afc46ebb5507a8003bf034c1422d70adf46508affc45bd232695374d9"

  def install
    bin.install "gfxutil"
  end
end
