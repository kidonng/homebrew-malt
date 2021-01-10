# Conflicts with homebrew/core/leaf
class Leaf < Formula
  desc "Lightweight and fast proxy utility"
  homepage "https://github.com/eycorsican/leaf"
  version "0.2.7"
  url "https://github.com/eycorsican/leaf/releases/download/v#{version}/leaf-x86_64-apple-darwin.zip"
  sha256 "4403f49bad3f0ceeb10482559785f87fe561fee5458665005509b3e9d816dc99"
  license "Apache-2.0"

  def install
    bin.install "leaf-x86_64-apple-darwin" => "leaf"
  end
end
