class Np < Formula
  require "language/node"

  desc "A better npm publish"
  homepage "https://github.com/sindresorhus/np"
  url "https://registry.npmjs.org/np/-/np-7.4.0.tgz"
  sha256 "7ad8b030ae0d0a154b8ea3a50aa94cb645aa55a946cb2188408423a6a27b7506"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
