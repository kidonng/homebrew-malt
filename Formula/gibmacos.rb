class Gibmacos < Formula
  desc "Download macOS components"
  homepage "https://github.com/corpnewt/gibMacOS"
  url "https://github.com/corpnewt/gibMacOS.git",
      revision: "a7b54954173ca3ff01946e80f80b1fd02ef0be29"
  version "a7b5495"
  license "MIT"
  head "https://github.com/corpnewt/gibMacOS.git"

  def install
    bin.install "Scripts"
    bin.install "BuildmacOSInstallApp.command" => "buildmacosinstallapp"
    bin.install "gibMacOS.command" => "gibmacos"
  end
end
