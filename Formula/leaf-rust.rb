class LeafRust < Formula
  desc "Lightweight and fast proxy utility"
  homepage "https://github.com/eycorsican/leaf"
  url "https://github.com/eycorsican/leaf/releases/download/v0.2.4/leaf-x86_64-apple-darwin.zip"
  sha256 "aafd9d5de490f826089110004fe4686394059d6e663b8e735f75d1a38070e6d4"
  license "Apache-2.0"
  head "https://github.com/eycorsican/leaf.git"

  conflicts_with "leaf", because: "leaf also ships a leaf binary"

  def install
    bin.install "leaf-x86_64-apple-darwin" => "leaf"
  end
end
