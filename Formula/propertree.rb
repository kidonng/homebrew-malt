class Propertree < Formula
  desc "GUI plist editor"
  homepage "https://github.com/corpnewt/ProperTree"
  url "https://github.com/corpnewt/ProperTree/archive/1d87de9e86ad16786232b3705a02e7e2f2063029.tar.gz"
  sha256 "e74bde806b8883e362e946d18e92f4e87e011dc2fa4f193a0c2ac5bf16757829"
  license "BSD-3-Clause"
  head "https://github.com/corpnewt/ProperTree.git"

  def install
    bin.install "Scripts"
    bin.install "ProperTree.command" => "propertree"
  end
end
