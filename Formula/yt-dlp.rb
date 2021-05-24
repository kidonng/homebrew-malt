class YtDlp < Formula
  include Language::Python::Virtualenv

  desc "Download YouTube videos from the command-line"
  homepage "https://github.com/yt-dlp/yt-dlp"
  url "https://files.pythonhosted.org/packages/67/32/bc225bf22c77cde18d137afecf52c1e48ace30e68af14ba7a1768123b303/yt-dlp-2021.5.20.tar.gz"
  sha256 "4e0af8000c490bec014481b6391080afbf9b19e1af0433b967295e8420ab43d9"
  license "Unlicense"

  bottle do
    root_url "https://github.com/kidonng/homebrew-malt/releases/download/yt-dlp-2021.5.20"
    sha256 cellar: :any_skip_relocation, big_sur: "38e8198db1d76768618d8af7e127b0aba0b0883fc4c5f10fbb05042e630fc109"
  end

  depends_on "python@3.9"
  depends_on "ffmpeg" => :recommended

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
