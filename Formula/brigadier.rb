class Brigadier < Formula
  desc "Fetch and install Boot Camp ESDs"
  homepage "https://github.com/corpnewt/brigadier"
  url "https://github.com/corpnewt/brigadier.git",
      revision: "fb1008449428168dcb084be4a691ebafa7403d44"
  version "fb10084"
  license "MIT"
  head "https://github.com/corpnewt/brigadier.git"

  def install
    bin.install "downloader.py"
    bin.install "brigadier.py"
    bin.install "brigadier.command" => "brigadier"
  end
end
