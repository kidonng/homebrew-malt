class Gibmacos < Formula
  desc "Download macOS components"
  homepage "https://github.com/corpnewt/gibMacOS"
  url "https://github.com/corpnewt/gibMacOS/archive/a7b54954173ca3ff01946e80f80b1fd02ef0be29.tar.gz"
  sha256 "1b79046c10d9a905d645401f0a0b0fe0d1f6ab6bf8bf0077ed0743bb20ae993b"
  license "MIT"
  head "https://github.com/corpnewt/gibMacOS.git"

  def install
    bin.install "Scripts"
    bin.install "BuildmacOSInstallApp.command" => "buildmacosinstallapp"
    bin.install "gibMacOS.command" => "gibmacos"
  end
end
