class Cpufriendfriend < Formula
  desc "Inspect frequency vectors of X86PlatformPlugin"
  homepage "https://github.com/fewtarius/CPUFriendFriend"
  url "https://github.com/fewtarius/CPUFriendFriend/archive.git",
      revision: "ae123c0aeb4595ce102da5355a85a690c3ddd03f"
  version "ae123c0"
  license "MIT"
  head "https://github.com/fewtarius/CPUFriendFriend.git"

  def install
    bin.install "Scripts"
    bin.install "CPUFriendFriend.py"
    bin.install "CPUFriendFriend.command" => "cpufriendfriend"
  end
end
