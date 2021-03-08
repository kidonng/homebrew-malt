class Vercel < Formula
  require "language/node"

  desc "Develop. Preview. Ship."
  homepage "https://vercel.com/"
  url "https://registry.npmjs.org/vercel/-/vercel-21.3.1.tgz"
  sha256 "2b6205512e23825f181af360bf2606765d757b434120a793ab57194d2a6a18de"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
