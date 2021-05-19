class YtDlp < Formula
  include Language::Python::Virtualenv

  desc "Download YouTube videos from the command-line"
  homepage "https://github.com/yt-dlp/yt-dlp"
  url "https://files.pythonhosted.org/packages/c7/18/db80ea62ca0d36d8e66cb7e334d2c1576cb9ff09eb86fe7c0c4ce680a6e2/yt-dlp-2021.5.11.tar.gz"
  sha256 "9bbaac7a496f83821056d3545204adc7cd0153e04775b6491b430f48b1fc32df"
  license "Unlicense"

  bottle do
    root_url "https://github.com/kidonng/homebrew-malt/releases/download/yt-dlp-2021.5.11"
    sha256 cellar: :any_skip_relocation, big_sur: "1cf7d375b12345eea8feeb83fd35fcd0828369e7422f46e27c54b4a29c15c47b"
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
