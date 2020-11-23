class Naiveproxy < Formula
  desc "Network proxy"
  homepage "https://github.com/klzgrad/naiveproxy"
  url "https://github.com/klzgrad/naiveproxy/releases/download/v87.0.4280.66-1/naiveproxy-v87.0.4280.66-1-osx.tar.xz"
  sha256 "0bec0c96f9118960d57d087f63a26682b902968e2eeb96e379ae8635418f9523"
  license "BSD-3-Clause"
  head "https://github.com/klzgrad/naiveproxy.git"

  def install
    bin.install "naive"

    pkgetc.install "config.json"
  end
end
