# Conflicts with homebrew/core/leaf
class Leaf < Formula
  desc "Lightweight and fast proxy utility"
  homepage "https://github.com/eycorsican/leaf"
  url "https://github.com/eycorsican/leaf/releases/download/v0.2.6/leaf-x86_64-apple-darwin.zip"
  version "0.2.6"
  sha256 "8e42286b141b333f0552aa0996c4614a9a8d81994ba81213e7ff82a0dadf1753"
  license "Apache-2.0"

  def install
    bin.install "leaf-x86_64-apple-darwin" => "leaf"
  end
end
