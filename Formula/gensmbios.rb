class Gensmbios < Formula
  desc "Generate SMBIOS and optionally save to a plist"
  homepage "https://github.com/corpnewt/GenSMBIOS"
  url "https://github.com/corpnewt/GenSMBIOS/archive/b10c29f8dbadcdb7b27ba7b5bca1486bcf4ac312.tar.gz"
  sha256 "44c570ec926e5726555ad58a31cfe033d5de596e51ede8886371f429abfbff7e"
  license "MIT"
  head "https://github.com/corpnewt/GenSMBIOS.git"

  def install
    bin.install "Scripts"
    bin.install "GenSMBIOS.command" => "gensmbios"
  end
end
