class TrojanGo < Formula
  desc "Network proxy"
  homepage "https://github.com/p4gefau1t/trojan-go"
  url "https://github.com/p4gefau1t/trojan-go/releases/download/v0.8.2/trojan-go-darwin-amd64.zip"
  version "0.8.2"
  sha256 "2b2490287ba97363b908075d81d622b42ddf10aac53e7bf303bbc0cbf32f6823"
  license "GPL-3.0-only"

  def install
    bin.install "trojan-go"

    pkgshare.install "geoip.dat"
    pkgshare.install "geosite.dat"
  end
end
