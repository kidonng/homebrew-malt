class VscodeHtmlLanguageserverBin < Formula
  require "language/node"

  desc "Binary version published on npm of vscode-html-languageserver extracted from VSCode tree"
  homepage "https://github.com/vscode-langservers/vscode-html-languageserver-bin"
  url "https://registry.npmjs.org/vscode-html-languageserver-bin/-/vscode-html-languageserver-bin-1.4.0.tgz"
  sha256 "262a770d25ce82d48548b0a423c8114ead6a30d327d09ad24b3950c1386e99ef"
  license "MIT"

  bottle do
    root_url "https://github.com/kidonng/homebrew-malt/releases/download/vscode-html-languageserver-bin-1.4.0"
    sha256 cellar: :any_skip_relocation, big_sur: "3f0f93ba4455a21ca22b2536ea0ae7cd5b933ba3ce9c9f9be8550071feb4cffc"
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
