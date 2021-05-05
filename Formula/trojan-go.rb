class TrojanGo < Formula
  desc "Network proxy"
  homepage "https://github.com/p4gefau1t/trojan-go"
  if Hardware::CPU.intel?
    url "https://github.com/p4gefau1t/trojan-go/releases/download/v0.9.1/trojan-go-darwin-amd64.zip"
    sha256 "18b383c561229b6db83b38ca82baf8652a358122388c3f96536f716839e560b9"
  else
    url "https://github.com/p4gefau1t/trojan-go/releases/download/v0.9.1/trojan-go-darwin-arm64.zip"
    sha256 "0dc9c28e7f46a60736e67f28a96c1461e5572340066a55de980687076b518972"
  end
  version "0.9.1"
  license "GPL-3.0-only"

  def install
    bin.install "trojan-go"

    pkgshare.install "geoip.dat"
    pkgshare.install "geosite.dat"
  end
end
