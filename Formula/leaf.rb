# Conflicts with homebrew/core/leaf
class Leaf < Formula
  desc "Lightweight and fast proxy utility"
  homepage "https://github.com/eycorsican/leaf"
  url "https://github.com/eycorsican/leaf/archive/v0.2.7.tar.gz"
  version "0.2.6"
  sha256 "7c96572f60cad0cf964c0970d2fa03430e58727f6673b0afd7838e1a43e36777"
  license "Apache-2.0"

  def install
    bin.install "leaf-x86_64-apple-darwin" => "leaf"
  end
end
