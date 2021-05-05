class ShadowsocksGo < Formula
  desc "Secure SOCKS5 proxy"
  homepage "https://github.com/shadowsocks/go-shadowsocks2"
  version "0.1.5"
  if Hardware::CPU.intel?
    url "https://github.com/shadowsocks/go-shadowsocks2/releases/download/v0.1.5/shadowsocks2-macos-amd64.gz"
    sha256 "22f9db6416feaf1be5db5c641302805aeaefecb5e5a6d568c2cca96e63996305"
  else
    url "https://github.com/shadowsocks/go-shadowsocks2/releases/download/v0.1.5/shadowsocks2-macos-arm64.gz"
    sha256 "d8d0b1ede0fc12a6fc4dc86825ae6b077842f0d42b47d969421f390a879a3c49"
  end
  license "Apache-2.0"

  def install
    if Hardware::CPU.intel?
      bin.install "shadowsocks2-macos-amd64" => "ss-go"
    else
      bin.install "shadowsocks2-macos-arm64" => "ss-go"
    end
  end
end
