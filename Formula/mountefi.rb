class Mountefi < Formula
  desc "Script for mounting EFI partitions"
  homepage "https://github.com/corpnewt/MountEFI"
  url "https://github.com/corpnewt/MountEFI.git",
      revision: "81dcf9498b12ec3799ef811d8edd194ec267044c"
  version "81dcf94"
  head "https://github.com/corpnewt/MountEFI.git"

  def install
    bin.install "Scripts"
    bin.install "MountEFI.command" => "mountefi"
  end
end
