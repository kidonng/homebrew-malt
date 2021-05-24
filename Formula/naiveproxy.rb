class Naiveproxy < Formula
  desc "Network proxy"
  homepage "https://github.com/klzgrad/naiveproxy"
  version "90.0.4430.85-10"
  if Hardware::CPU.intel?
    url "https://github.com/klzgrad/naiveproxy/releases/download/v#{version}/naiveproxy-v#{version}-mac-x64.tar.xz"
    sha256 "eb69ced497cc62c545e18ebfaced2f7172aabb2a8d81b3cfa30b897766f98f7e"
  else
    url "https://github.com/klzgrad/naiveproxy/releases/download/v#{version}/naiveproxy-v#{version}-mac-arm64.tar.xz"
    sha256 "d2fc5d857c819fc2832a0d9b866e1da92becb20cbafa0af1947316896edfc067"
  end
  license "BSD-3-Clause"

  def install
    bin.install "naive"

    pkgetc.install "config.json"
  end
end
