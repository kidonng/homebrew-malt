class Nali < Formula
  desc "Tool for querying IP geographic information and CDN provider"
  homepage "https://github.com/zu1k/nali"
  version "0.2.2"
  url "https://github.com/zu1k/nali/releases/download/v#{version}/nali-darwin-amd64-v#{version}.gz"
  sha256 "7a43e78bed7d3e21a920cda1783c40fcbcb010cf9d910dbdde9b38f0fff3b0fa"
  license "MIT"

  def install
    bin.install "nali-darwin-amd64" => "nali"
  end
end
