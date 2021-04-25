class Np < Formula
  require "language/node"

  desc "A better npm publish"
  homepage "https://github.com/sindresorhus/np"
  url "https://registry.npmjs.org/np/-/np-7.5.0.tgz"
  sha256 "954a43c5cee77fbd4397f75f2e22843c1c5d6e6b4aac277b0b210628cb4f30fb"
  license "MIT"

  bottle do
    root_url "https://github.com/kidonng/homebrew-malt/releases/download/np-7.5.0"
    sha256 cellar: :any_skip_relocation, big_sur: "e5d1cec31f8ad04470ca7ecc58ee2c17bd74e467a46b2d00b9b4665a4fe538bd"
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
