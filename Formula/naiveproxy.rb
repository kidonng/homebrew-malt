class Naiveproxy < Formula
  desc "Network proxy"
  homepage "https://github.com/klzgrad/naiveproxy"
  if Hardware::CPU.intel?
    url "https://github.com/klzgrad/naiveproxy/releases/download/v89.0.4389.72-1/naiveproxy-v89.0.4389.72-1-mac-x64.tar.xz"
    sha256 "2c1135384f01b5fa24f218130530a217be6cdfedbec7601179035a2e5e2c6646"
  else
    url "https://github.com/klzgrad/naiveproxy/releases/download/v89.0.4389.72-1/naiveproxy-v89.0.4389.72-1-mac-arm64.tar.xz"
    sha256 "65889d4277a1226759398c71c4b0c3881ca46ac8723351559e72416fbd15c8c2"
  end
  license "BSD-3-Clause"

  def install
    bin.install "naive"

    pkgetc.install "config.json"
  end
end
