class Vercel < Formula
  require "language/node"

  desc "Develop. Preview. Ship."
  homepage "https://vercel.com/"
  url "https://registry.npmjs.org/vercel/-/vercel-21.3.1.tgz"
  sha256 "2b6205512e23825f181af360bf2606765d757b434120a793ab57194d2a6a18de"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/kidonng/homebrew-malt/releases/download/vercel-21.3.1"
    sha256 cellar: :any_skip_relocation, big_sur: "59702099c1e01c899664dc184c7ceaf9d11afbf6e5f7f728a2243ef38d68e95a"
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
