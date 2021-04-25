class YtDlp < Formula
  include Language::Python::Virtualenv

  desc "Download YouTube videos from the command-line"
  homepage "https://github.com/yt-dlp/yt-dlp"
  url "https://files.pythonhosted.org/packages/52/d2/019f4d877c08b51d9e157d3574c0eb5771e715741e80e477314131e97a54/yt-dlp-2021.4.22.tar.gz"
  sha256 "7cc08a1843f7b6511d8c8fc73a6e53f3ac78a781f48431d12f898c1af0af9560"
  license "Unlicense"

  bottle do
    root_url "https://github.com/kidonng/homebrew-malt/releases/download/yt-dlp-2021.3.24.1"
    sha256 cellar: :any_skip_relocation, big_sur: "ba634900b4ec92b7157f93b9eb7163d7b092c85f5d8c8dcf4b0de47f1befbd04"
  end

  depends_on "python@3.9"

  def install
    virtualenv_install_with_resources
    man1.install_symlink libexec/"share/man/man1/yt-dlp.1"
    bash_completion.install libexec/"share/bash-completion/completions/yt-dlp"
    fish_completion.install libexec/"share/fish/vendor_completions.d/yt-dlp.fish"
    zsh_completion.install libexec/"share/zsh/site-functions/_yt-dlp"
  end

  test do
    # commit history of homebrew-core repo
    system "#{bin}/yt-dlp", "--simulate", "https://www.youtube.com/watch?v=pOtd1cbOP7k"
    # homebrew playlist
    system "#{bin}/yt-dlp", "--simulate", "--yes-playlist", "https://www.youtube.com/watch?v=pOtd1cbOP7k&list=PLMsZ739TZDoLj9u_nob8jBKSC-mZb0Nhj"
  end
end
