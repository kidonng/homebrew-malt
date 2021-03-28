class ExaMod < Formula
  desc "Modern replacement for 'ls' (modified version)"
  homepage "https://the.exa.website"
  version "unstable-2021-03-27"
  url "https://github.com/ogham/exa.git",
    revision: "435161e6e4436f10e4faaa03c5f3deef26e12b36"
  license "MIT"

  bottle do
    root_url "https://github.com/kidonng/homebrew-malt/releases/download/exa-mod-unstable-2021-03-27"
    sha256 cellar: :any_skip_relocation, big_sur: "6d20a0444f831d4683115c3c13e26d45f5d8dcc86b7a4d98bc7097c945d84718"
  end

  depends_on "pandoc" => :build
  depends_on "rust" => :build

  uses_from_macos "zlib"

  on_linux do
    depends_on "libgit2"
  end

  conflicts_with "exa", because: "both install `exa` binary"

  # Support reading arguments from config file and environment variables
  # https://github.com/ogham/exa/pull/763
  patch do
    url "https://github.com/ogham/exa/pull/763.patch?full_index=1"
    sha256 "c8d9d39571f78bab0abf3bee91fd3c38e6a433cbd4e6cf7fa46e231af10fe4c6"
  end

  def install
    system "cargo", "install", *std_cargo_args

    bash_completion.install "completions/completions.bash" => "exa"
    zsh_completion.install  "completions/completions.zsh"  => "_exa"
    fish_completion.install "completions/completions.fish" => "exa.fish"

    args = %w[
      --standalone
      --to=man
    ]

    system "pandoc", *args, "man/exa.1.md", "-o", "exa.1"
    system "pandoc", *args, "man/exa_colors.5.md", "-o", "exa_colors.5"

    man1.install "exa.1"
    man5.install "exa_colors.5"
  end

  test do
    (testpath/"test.txt").write("")
    assert_match "test.txt", shell_output("#{bin}/exa")
  end
end
