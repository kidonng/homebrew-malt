class OpencoreUtils < Formula
  homepage "https://github.com/acidanthera/OpenCorePkg"
  url "https://github.com/acidanthera/OpenCorePkg/releases/download/0.6.8/OpenCore-0.6.8-RELEASE.zip"
  sha256 "7347cb3decd9026d5a3d6156987abe661f7673b713ec41b0c325a2ab9eea062f"
  license "BSD-3-Clause"

  def install
    bin.install "Utilities/acdtinfo/acdtinfo" => "acdtinfo"

    prefix.install "Utilities/CreateVault"
    bin.install_symlink "#{prefix}/CreateVault/sign.command" => "createvault"

    bin.install "Utilities/disklabel/disklabel" => "disklabel"

    bin.install "Utilities/icnspack/icnspack" => "icnspack"

    bin.install "Utilities/kpdescribe/kpdescribe.sh" => "kpdescribe"

    prefix.install "Utilities/LegacyBoot"
    bin.install_symlink "#{prefix}/LegacyBoot/BootInstall_IA32.tool" => "bootinstall_ia32"
    bin.install_symlink "#{prefix}/LegacyBoot/BootInstall_X64.tool" => "bootinstall_x64"

    prefix.install "Utilities/LogoutHook"
    bin.install_symlink "#{prefix}/LogoutHook/LogoutHook.command" => "logouthook"

    prefix.install "Utilities/macrecovery"
    bin.install_symlink "#{prefix}/macrecovery/macrecovery.py" => "macrecovery"

    bin.install "Utilities/macserial/macserial" => "macserial"

    bin.install "Utilities/ocpasswordgen/ocpasswordgen" => "ocpasswordgen"

    bin.install "Utilities/ocvalidate/ocvalidate" => "ocvalidate"
  end
end
