class OpencoreUtils < Formula
  desc "OpenCore utilities"
  homepage "https://github.com/acidanthera/OpenCorePkg"
  url "https://github.com/acidanthera/OpenCorePkg/releases/download/0.6.5/OpenCore-0.6.5-RELEASE.zip"
  sha256 "bcbc1b783ab7957973fd13ea4a5d120b0deb063120ff98a863fa7dc34c32c5c3"
  license "BSD-3-Clause"

  def install
    prefix.install "Utilities/CreateVault"
    bin.install_symlink "#{prefix}/CreateVault/sign.command" => "createvault"
    bin.install "Utilities/disklabel/disklabel" => "disklabel"
    bin.install "Utilities/icnspack/icnspack" => "icnspack"
    bin.install "Utilities/kpdescribe/kpdescribe.sh" => "kpdescribe"
    prefix.install "Utilities/LegacyBoot"
    bin.install_symlink "#{prefix}/LegacyBoot/BootInstall_IA32.tool" => "bootinstall_ia32"
    bin.install_symlink "#{prefix}/LegacyBoot/BootInstall_X64.tool" => "bootinstall_x64"
    bin.install_symlink "#{prefix}/LegacyBoot/QemuBuild.command" => "qemubuild"
    prefix.install "Utilities/LogoutHook"
    bin.install_symlink "#{prefix}/LogoutHook/LogoutHook.command" => "logouthook"
    prefix.install "Utilities/macrecovery"
    bin.install_symlink "#{prefix}/macrecovery/macrecovery.py" => "macrecovery"
    bin.install "Utilities/macserial/macserial" => "macserial"
    bin.install "Utilities/ocvalidate/ocvalidate" => "ocvalidate"
  end
end
