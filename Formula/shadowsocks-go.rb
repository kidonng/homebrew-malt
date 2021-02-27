class ShadowsocksGo < Formula
  desc "Secure SOCKS5 proxy"
  homepage "https://github.com/shadowsocks/go-shadowsocks2"
  version "0.1.4"
  if Hardware::CPU.intel?
    url "https://github.com/shadowsocks/go-shadowsocks2/releases/download/v#{version}/shadowsocks2-macos-amd64.gz"
    sha256 "6fd9620daa856c5505846c59edcef6cf28548a2e8bd37ad9e36c75e40e60a5a1"
  else
    url "https://github.com/shadowsocks/go-shadowsocks2/releases/download/v#{version}/shadowsocks2-macos-arm64.gz"
    sha256 "fc2082a105cdb2ee2db4380dad1fe5818182e15479d729a75bc7356166e53edb"
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
