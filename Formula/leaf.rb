# Conflicts with homebrew/core/leaf
class Leaf < Formula
  desc "Lightweight and fast proxy utility"
  homepage "https://github.com/eycorsican/leaf"
  version "0.2.13"
  url "https://github.com/eycorsican/leaf/releases/download/v#{version}/leaf-x86_64-apple-darwin.gz"
  sha256 "6800cb367f48a584c7c0849fc9d74c97d30b6e8f3e4b2f16a25106ba2e587887"
  license "Apache-2.0"

  def install
    bin.install "leaf-x86_64-apple-darwin" => "leaf"
  end
end
