class Unsign < Formula
  desc "Remove code signatures from OSX Mach-O binaries"
  homepage "https://github.com/steakknife/unsign"
  url "https://github.com/steakknife/unsign.git",
      revision: "8cf356ca335d0709df3800e12ff07c25ec5ddd35"
  version "8cf356c"
  license "ISC"
  head "https://github.com/steakknife/unsign.git"

  def install
    system "make"

    bin.install "unsign"
  end
end
