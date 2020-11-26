class Kextextractor < Formula
  desc "Extract/copy a folder of kexts or zips to a target EFI partition"
  homepage "https://github.com/corpnewt/KextExtractor"
  url "https://github.com/corpnewt/KextExtractor.git",
      revision: "05e134cf91a505b6caa9079404006d670d7de586"
  version "05e134c"
  license "MIT"
  head "https://github.com/corpnewt/KextExtractor.git"

  def install
    bin.install "Scripts"
    bin.install "KextExtractor.command" => "kextextractor"
  end
end
