class YoutubeDlMod < Formula
  include Language::Python::Virtualenv

  desc "Download YouTube videos from the command-line"
  homepage "https://youtube-dl.org/"
  url "https://files.pythonhosted.org/packages/f3/81/86da9f2bcbea4d7315f05bbf4c12ef74fee5eddd64f9c5255e8f1e410bc2/youtube_dl-2020.11.26.tar.gz"
  sha256 "3d52d2c969ec9521a086c43f809fd7545708b7ba24d7379fb123b5438ba691e1"
  license "Unlicense"

  depends_on "python@3.9"

  # Add support for Bilibili playlist: https://github.com/ytdl-org/youtube-dl/pull/25308
  patch do
    url "https://github.com/ytdl-org/youtube-dl/pull/25308.patch"
    sha256 "f843b2fbd99ddbc3be2a3e8226fbebcb11982631d61423355620036aa78b9ef7"
  end

  def install
    virtualenv_install_with_resources

    man1.install_symlink libexec/"share/man/man1/youtube-dl.1" => "youtube-dl.1"
    bash_completion.install libexec/"etc/bash_completion.d/youtube-dl.bash-completion"
    fish_completion.install libexec/"etc/fish/completions/youtube-dl.fish"
  end

  test do
    # commit history of homebrew-core repo
    system "#{bin}/youtube-dl", "--simulate", "https://www.youtube.com/watch?v=pOtd1cbOP7k"
    # homebrew playlist
    system "#{bin}/youtube-dl", "--simulate", "--yes-playlist", "https://www.youtube.com/watch?v=pOtd1cbOP7k&list=PLMsZ739TZDoLj9u_nob8jBKSC-mZb0Nhj"
  end
end
