class Viu < Formula
  desc "Simple terminal image viewer"
  homepage "https://github.com/atanunq/viu"
  url "https://github.com/atanunq/viu/archive/v1.3.0.tar.gz"
  sha256 "ee049c065945a528699799f18de4d82355d5b2f5509d2435b9f5332c8dd520c5"
  license "MIT"
  head "https://github.com/atanunq/viu.git"

  bottle do
    root_url "https://github.com/kidonng/homebrew-malt/releases/download/viu-1.3.0"
    sha256 cellar: :any_skip_relocation, big_sur: "8075fa8f0f099544b962ec14db9dee19324cc7db8d466412e6fbdd67546b3f29"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
