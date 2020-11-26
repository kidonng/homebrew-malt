class Gensmbios < Formula
  desc "Generate SMBIOS and optionally save to a plist"
  homepage "https://github.com/corpnewt/GenSMBIOS"
  url "https://github.com/corpnewt/GenSMBIOS.git",
      revision: "b10c29f8dbadcdb7b27ba7b5bca1486bcf4ac312"
  version "b10c29f"
  license "MIT"
  head "https://github.com/corpnewt/GenSMBIOS.git"

  def install
    bin.install "Scripts"
    bin.install "GenSMBIOS.command" => "gensmbios"
  end
end
