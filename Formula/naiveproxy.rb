class Naiveproxy < Formula
  desc "Network proxy"
  homepage "https://github.com/klzgrad/naiveproxy"
  if Hardware::CPU.intel?
    url "https://github.com/klzgrad/naiveproxy/releases/download/v90.0.4430.85-4/naiveproxy-v90.0.4430.85-4-mac-x64.tar.xz"
    sha256 "ca3c2d0496b8da35c27c4534e4bfc24bd40c8e2800be4dc5aa8fb78fca4d463d"
  else
    url "https://github.com/klzgrad/naiveproxy/releases/download/v90.0.4430.85-4/naiveproxy-v90.0.4430.85-4-mac-arm64.tar.xz"
    sha256 "645e4310708233830a6c3b371893d670f5842f1e2b23c2ab8504174859685c2e"
  end
  version "90.0.4430.85-4"
  license "BSD-3-Clause"

  def install
    bin.install "naive"

    pkgetc.install "config.json"
  end
end
