class Np < Formula
  require "language/node"

  desc "A better npm publish"
  homepage "https://github.com/sindresorhus/np"
  url "https://registry.npmjs.org/np/-/np-7.4.0.tgz"
  sha256 "7ad8b030ae0d0a154b8ea3a50aa94cb645aa55a946cb2188408423a6a27b7506"
  license "MIT"

  bottle do
    root_url "https://github.com/kidonng/homebrew-malt/releases/download/np-7.4.0"
    sha256 cellar: :any_skip_relocation, big_sur: "21f804fbdc3bcb86004dfd71703d38f5947dc9d87b44509f0e61be98bcacc16a"
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
