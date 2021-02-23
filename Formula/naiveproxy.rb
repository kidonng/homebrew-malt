class Naiveproxy < Formula
  desc "Network proxy"
  homepage "https://github.com/klzgrad/naiveproxy"
  url "https://github.com/klzgrad/naiveproxy/releases/download/v88.0.4324.96-1/naiveproxy-v88.0.4324.96-1-osx.tar.xz"
  sha256 "451e741c50d165617dbeb8533adfec497c5bf3906fb04ce54acb27f098a92105"
  license "BSD-3-Clause"

  def install
    bin.install "naive"

    pkgetc.install "config.json"
  end
end
