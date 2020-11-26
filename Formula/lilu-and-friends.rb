class LiluAndFriends < Formula
  desc "Download and build kexts"
  homepage "https://github.com/corpnewt/Lilu-and-Friends"
  url "https://github.com/corpnewt/Lilu-and-Friends.git",
      revision: "1605a07522ae4375af0569e2f81880265722a5f3"
  version "1605a07"
  license "MIT"
  head "https://github.com/corpnewt/Lilu-and-Friends.git"

  def install
    bin.install "Scripts"
    bin.install "Run.command" => "liluandfriends"
  end
end
