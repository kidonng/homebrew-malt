class YoutubeDlMod < Formula
  include Language::Python::Virtualenv

  desc "Download YouTube videos from the command-line"
  homepage "https://youtube-dl.org/"
  url "https://files.pythonhosted.org/packages/76/03/a5c749ea2ddeac51dcd0376d8519868ca710dd241c871f555765e777c5bf/youtube_dl-2020.11.21.1.tar.gz"
  sha256 "a785c1373a3c2d0b82c54aabc4831e8e6f6ede059ec462e54526d694dd3c29ca"
  license "Unlicense"

  depends_on "python@3.9"

  # Add support for Bilibili playlist: https://github.com/ytdl-org/youtube-dl/pull/25308
  patch do
    url "https://github.com/ytdl-org/youtube-dl/pull/25308.patch"
    sha256 "f843b2fbd99ddbc3be2a3e8226fbebcb11982631d61423355620036aa78b9ef7"
  end

  def install
    virtualenv_install_with_resources

    bash_completion.install "#{libexec}/etc/bash_completion.d/youtube-dl.bash-completion"
    fish_completion.install "#{libexec}/etc/fish/completions/youtube-dl.fish"
  end

  test do
    # commit history of homebrew-core repo
    system "#{bin}/youtube-dl", "--simulate", "https://www.youtube.com/watch?v=pOtd1cbOP7k"
    # homebrew playlist
    system "#{bin}/youtube-dl", "--simulate", "--yes-playlist", "https://www.youtube.com/watch?v=pOtd1cbOP7k&list=PLMsZ739TZDoLj9u_nob8jBKSC-mZb0Nhj"
  end
end
