class Unsign < Formula
  desc "Remove code signatures from OSX Mach-O binaries"
  homepage "https://github.com/steakknife/unsign"
  url "https://github.com/steakknife/unsign/archive/8cf356ca335d0709df3800e12ff07c25ec5ddd35.tar.gz"
  sha256 "27579fe8e3da50918d74e6bd200f0bb4d4a1f9b13305fa933453fe018966a4b6"
  license "ISC"
  head "https://github.com/steakknife/unsign.git"

  def install
    system "make"

    bin.install "unsign"
  end
end
