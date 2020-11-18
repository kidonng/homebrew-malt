class OneKeyHidpi < Formula
  desc "Enable macOS HiDPI"
  homepage "https://github.com/xzhih/one-key-hidpi"
  url "https://github.com/xzhih/one-key-hidpi/archive/2f356f4b67aeea295f8bf3889ef9670861d49841.tar.gz"
  sha256 "4542698ecf11851e69771e29c51922e3036a3631fe2c12521e75927bed3a46c4"
  head "https://github.com/xzhih/one-key-hidpi"

  def install
    bin.install "hidpi.sh" => "hidpi"
  end
end
