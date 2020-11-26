class Propertree < Formula
  desc "GUI plist editor"
  homepage "https://github.com/corpnewt/ProperTree"
  url "https://github.com/corpnewt/ProperTree.git",
      revision: "c833307355ad229ca37ae6a476253f73641d62d4"
  version "c833307"
  license "BSD-3-Clause"
  head "https://github.com/corpnewt/ProperTree.git"

  def install
    bin.install "Scripts"
    bin.install "ProperTree.command" => "propertree"
  end
end
