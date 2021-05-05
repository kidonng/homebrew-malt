class Naiveproxy < Formula
  desc "Network proxy"
  homepage "https://github.com/klzgrad/naiveproxy"
  if Hardware::CPU.intel?
    url "https://github.com/klzgrad/naiveproxy/releases/download/v90.0.4430.85-6/naiveproxy-v90.0.4430.85-6-mac-x64.tar.xz"
    sha256 "01894c4e4ceb75213a73ff15e1d35ff5178127764e9ce054bb8bada2e55b4135"
  else
    url "https://github.com/klzgrad/naiveproxy/releases/download/v90.0.4430.85-6/naiveproxy-v90.0.4430.85-6-mac-arm64.tar.xz"
    sha256 "5a0e59fb936bfd1451c4b1293126d115e4e4082f79ae508cb172cc227fb8cbbb"
  end
  version "90.0.4430.85-6"
  license "BSD-3-Clause"

  def install
    bin.install "naive"

    pkgetc.install "config.json"
  end
end
