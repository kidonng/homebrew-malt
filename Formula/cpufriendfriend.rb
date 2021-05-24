class Cpufriendfriend < Formula
  desc "Inspect frequency vectors of X86PlatformPlugin"
  homepage "https://github.com/corpnewt/CPUFriendFriend"
  url "https://github.com/corpnewt/CPUFriendFriend.git",
      revision: "c6e67c19999ff6714a2f7174bd119d0d3ba42ab6"
  version "c6e67c1"
  license "MIT"
  head "https://github.com/corpnewt/CPUFriendFriend.git"

  def install
    bin.install "Scripts"
    bin.install "CPUFriendFriend.py"
    bin.install "CPUFriendFriend.command" => "cpufriendfriend"
  end
end
