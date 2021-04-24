class TrojanGo < Formula
  desc "Network proxy"
  homepage "https://github.com/p4gefau1t/trojan-go"
  url "https://github.com/p4gefau1t/trojan-go/releases/download/v0.8.3/trojan-go-darwin-amd64.zip"
  version "0.8.3"
  sha256 "67b18d4e555d37a09a91c2c40d33ef987201b68ffd9fe7ee1c2d137fd44f0e76"
  license "GPL-3.0-only"

  def install
    bin.install "trojan-go"

    pkgshare.install "geoip.dat"
    pkgshare.install "geosite.dat"
  end
end
