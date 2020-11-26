class Mountefi < Formula
  desc "Mount EFI partitions"
  homepage "https://github.com/corpnewt/MountEFI"
  url "https://github.com/corpnewt/MountEFI.git",
      revision: "81dcf9498b12ec3799ef811d8edd194ec267044c"
  version "81dcf94"
  sha256 "322f302c08ae1592abaaab1c63d6438fcc66dbced037a30c85c0cbc20b778dca"
  head "https://github.com/corpnewt/MountEFI.git"

  def install
    bin.install "Scripts"
    bin.install "MountEFI.command" => "mountefi"
  end
end
