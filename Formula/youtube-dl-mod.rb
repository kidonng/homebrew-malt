class YoutubeDlMod < Formula
  include Language::Python::Virtualenv

  desc "Download YouTube videos from the command-line (modified version)"
  homepage "https://youtube-dl.org/"
  url "https://files.pythonhosted.org/packages/3a/20/9e710f4b791157a0ce55b032a8f61fc357b0c47d237028095565de030879/youtube_dl-2021.1.16.tar.gz"
  sha256 "acf74701a31b6c3d06f9d4245a46ba8fb6c378931681177412043c6e8276fee7"
  license "Unlicense"

  depends_on "python@3.9"

  conflicts_with "youtube-dl", because: "both install `youtube-dl` binary"

  # Add support for Bilibili playlist: https://github.com/ytdl-org/youtube-dl/pull/25308
  patch do
    url "https://github.com/ytdl-org/youtube-dl/pull/25308.patch?full_index=1"
    sha256 "a0a6c04c49dd18fc19ede0e8658757cdfac8229141706b6f5af4eebb5b35fb81"
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
