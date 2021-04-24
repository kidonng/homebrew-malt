class Nali < Formula
  desc "Tool for querying IP geographic information and CDN provider"
  homepage "https://github.com/zu1k/nali"
  version "0.2.4"
  url "https://github.com/zu1k/nali/releases/download/v#{version}/nali-darwin-amd64-v#{version}.gz"
  sha256 "26a1ee37cc4e013b4fd929a703b1a98aa4d2a45fdb9250a3d303a9bf358a4185"
  license "MIT"

  def install
    bin.install "nali-darwin-amd64" => "nali"
  end
end
