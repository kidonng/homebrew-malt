class YoutubeDlMod < Formula
  include Language::Python::Virtualenv

  desc "Download YouTube videos from the command-line"
  homepage "https://youtube-dl.org/"
  url "https://files.pythonhosted.org/packages/7d/27/ffd9f9555f8543a00233bf32e61ee4540358b5ce77b64e6ff72ca1eb90d6/youtube_dl-2020.11.19.tar.gz"
  sha256 "2d6adbf7643467fa448939ebe6bebb002071b11dadf545909ca973f101b2584c"
  license "Unlicense"

  depends_on "python@3.9"

  # Add support for Bilibili playlist: https://github.com/ytdl-org/youtube-dl/pull/25308
  patch do
    url "https://github.com/ytdl-org/youtube-dl/pull/25308.patch"
    sha256 "f843b2fbd99ddbc3be2a3e8226fbebcb11982631d61423355620036aa78b9ef7"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # commit history of homebrew-core repo
    system "#{bin}/youtube-dl", "--simulate", "https://www.youtube.com/watch?v=pOtd1cbOP7k"
    # homebrew playlist
    system "#{bin}/youtube-dl", "--simulate", "--yes-playlist", "https://www.youtube.com/watch?v=pOtd1cbOP7k&list=PLMsZ739TZDoLj9u_nob8jBKSC-mZb0Nhj"
  end
end
