class VscodeCssLanguageserverBin < Formula
  require "language/node"

  desc "Binary version published on npm of vscode-css-languageserver extracted from VSCode tree"
  homepage "https://github.com/vscode-langservers/vscode-css-languageserver-bin"
  url "https://registry.npmjs.org/vscode-css-languageserver-bin/-/vscode-css-languageserver-bin-1.4.0.tgz"
  sha256 "daa006f74a6baa265e743811bf224003048144c805bc3a9dd3f8175d4815bced"
  license "MIT"

  bottle do
    root_url "https://github.com/kidonng/homebrew-malt/releases/download/vscode-css-languageserver-bin-1.4.0"
    sha256 cellar: :any_skip_relocation, big_sur: "9151d3555a6b9ba8877524d0373f0806735960d3e49dbbdf78668de3524b8385"
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
