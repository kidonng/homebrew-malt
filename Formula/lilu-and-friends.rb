class LiluAndFriends < Formula
  desc "Download and build kexts"
  homepage "https://github.com/corpnewt/Lilu-and-Friends"
  url "https://github.com/corpnewt/Lilu-and-Friends/archive/1605a07522ae4375af0569e2f81880265722a5f3.tar.gz"
  sha256 "eabdb8e8db1f55aebbe00730961e42518789634e1807f07922f17b561f2dd707"
  license "MIT"
  head "https://github.com/corpnewt/Lilu-and-Friends.git"

  def install
    bin.install "Scripts"
    bin.install "Run.command" => "liluandfriends"
  end
end
