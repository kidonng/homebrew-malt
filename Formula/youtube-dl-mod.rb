class YoutubeDlMod < Formula
  include Language::Python::Virtualenv

  desc "Download YouTube videos from the command-line (modified version)"
  homepage "https://youtube-dl.org/"
  url "https://files.pythonhosted.org/packages/a9/0f/a731f1a70b9ef99d677e102a7bba535c566dd7471e4288164461a3b4843a/youtube_dl-2020.12.14.tar.gz"
  sha256 "eaa859f15b6897bec21474b7787dc958118c8088e1f24d4ef1d58eab13188958"
  license "Unlicense"

  depends_on "python@3.9"

  conflicts_with "youtube-dl", because: "both install `youtube-dl` binary"

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
