class Clash < Formula
  desc "Rule-based tunnel"
  homepage "https://github.com/Dreamacro/clash"
  url "https://github.com/Dreamacro/clash/archive/v1.3.5.tar.gz"
  sha256 "89f39540a698fab82728c80e903d7750894789621595ca11a4777afdfc3e265d"
  license "GPL-3.0-only"

  def install
    bin.install "clash-darwin-amd64" => "clash"
  end
end
