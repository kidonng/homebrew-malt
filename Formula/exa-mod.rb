class ExaMod < Formula
  desc "Modern replacement for 'ls' (modified version)"
  homepage "https://the.exa.website"
  version "unstable-2021-04-01"
  url "https://github.com/ogham/exa.git",
    revision: "004589d07924030caf915d5f774997cdc892d7fb"
  license "MIT"

  bottle do
    root_url "https://github.com/kidonng/homebrew-malt/releases/download/exa-mod-unstable-2021-03-30"
    sha256 cellar: :any_skip_relocation, big_sur: "94a1743b3f84778e67f2a412555912f204e230d6eb575f955a861564dd6da9d0"
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
    url "https://github.com/kidonng/cherry/raw/master/patches/exa.patch"
    sha256 "733de543ac1336660de1caf8fc51cf7f796acd49779b3b0d2900880ffd48ce2f"
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
