class Nali < Formula
  desc "Tool for querying IP geographic information and CDN provider"
  homepage "https://github.com/zu1k/nali"
  url "https://github.com/zu1k/nali/releases/download/v0.2.2/nali-darwin-amd64-v0.2.2.gz"
  version "0.2.2"
  sha256 "7a43e78bed7d3e21a920cda1783c40fcbcb010cf9d910dbdde9b38f0fff3b0fa"
  license "MIT"

  def install
    bin.install "nali-darwin-amd64" => "nali"
  end
end
