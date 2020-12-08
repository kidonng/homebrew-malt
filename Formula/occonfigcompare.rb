class Occonfigcompare < Formula
  desc "Compare two plists and list missing keys in either"
  homepage "https://github.com/corpnewt/OCConfigCompare"
  url "https://github.com/corpnewt/OCConfigCompare.git",
      revision: "3905bbc3574de4bdc46ca8cfca64a4f32b68947e"
  version "3905bbc"
  license "MIT"
  head "https://github.com/corpnewt/OCConfigCompare.git"

  def install
    bin.install "Scripts"
    bin.install "OCConfigCompare.py"
    bin.install "OCConfigCompare.command" => "occonfigcompare"
  end
end
