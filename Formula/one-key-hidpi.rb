class OneKeyHidpi < Formula
  desc "Enable HiDPI"
  homepage "https://github.com/xzhih/one-key-hidpi"
  url "https://github.com/xzhih/one-key-hidpi.git",
      revision: "2f356f4b67aeea295f8bf3889ef9670861d49841"
  version "2f356f4"
  head "https://github.com/xzhih/one-key-hidpi.git"

  def install
    bin.install "hidpi.sh" => "hidpi"
  end
end
