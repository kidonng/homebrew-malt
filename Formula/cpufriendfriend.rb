class Cpufriendfriend < Formula
  desc "Inspect frequency vectors of X86PlatformPlugin"
  homepage "https://github.com/fewtarius/CPUFriendFriend"
  url "https://github.com/fewtarius/CPUFriendFriend/archive/ae123c0aeb4595ce102da5355a85a690c3ddd03f.tar.gz"
  version "ae123c0"
  sha256 "abc4b3246ec1779a0db832ae9e2e7b5e0d9269753d97686879ec28049a9f4c54"
  license "MIT"
  head "https://github.com/fewtarius/CPUFriendFriend.git"

  def install
    bin.install "Scripts"
    bin.install "CPUFriendFriend.py"
    bin.install "CPUFriendFriend.command" => "cpufriendfriend"
  end
end
