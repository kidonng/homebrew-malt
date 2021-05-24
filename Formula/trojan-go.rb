class TrojanGo < Formula
  desc "Network proxy"
  homepage "https://github.com/p4gefau1t/trojan-go"
  version "0.10.0"
  if Hardware::CPU.intel?
    url "https://github.com/p4gefau1t/trojan-go/releases/download/v#{version}/trojan-go-darwin-amd64.zip"
    sha256 "81d928d3bf37cd418a24ab96a6bb7c0f3f9797864e3d9729e859923642d39525"
  else
    url "https://github.com/p4gefau1t/trojan-go/releases/download/v#{version}/trojan-go-darwin-arm64.zip"
    sha256 "d0852400728d7ec4d21ba0aab3f7703211e0f6772267040003c6a7e6d49c4bd7"
  end
  license "GPL-3.0-only"

  def install
    bin.install "trojan-go"

    pkgshare.install "geoip.dat"
    pkgshare.install "geosite.dat"
  end
end
