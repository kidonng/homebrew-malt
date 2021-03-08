class TypescriptLanguageServer < Formula
  require "language/node"

  desc "TypeScript & JavaScript Language Server"
  homepage "https://github.com/theia-ide/typescript-language-server"
  url "https://registry.npmjs.org/typescript-language-server/-/typescript-language-server-0.5.1.tgz"
  sha256 "0023db3b4f4470fa9f042947458242293913e6965551a01b5ceb7fb9537a892d"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/kidonng/homebrew-malt/releases/download/typescript-language-server-0.5.1"
    sha256 cellar: :any_skip_relocation, big_sur: "259737cfcc9750f04ec83e77d3eed66b38e2d2652dbcaa28549b151d563dc410"
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
