class YoutubeDlMod < Formula
  include Language::Python::Virtualenv

  desc "Download YouTube videos from the command-line"
  homepage "https://youtube-dl.org/"
  url "https://files.pythonhosted.org/packages/79/88/05bc5ff2b03a218650523ee09f00465e95c278fe0105beda24cb756804c7/youtube_dl-2020.11.24.tar.gz"
  sha256 "f701befffe00ae4b0d56f88ed45e1295c151c340d0011efdb1005012abc81996"
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
