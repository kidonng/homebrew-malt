class Clash < Formula
  desc "Rule-based tunnel"
  homepage "https://github.com/Dreamacro/clash"
  url "https://github.com/Dreamacro/clash/releases/download/v1.3.0/clash-darwin-amd64-v1.3.0.gz"
  sha256 "ce72b9d5440585d48c5ec6b6888420a92196e3e5e24c32c6fdc52793987a8038"
  license "GPL-3.0-only"
  head "https://github.com/Dreamacro/clash.git"

  def install
    bin.install "clash-darwin-amd64" => "clash"
  end
end
