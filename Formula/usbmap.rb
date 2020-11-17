class Usbmap < Formula
  desc "Map USB ports and create a custom injector kext"
  homepage "https://github.com/corpnewt/USBMap"
  url "https://github.com/corpnewt/USBMap/archive/427f3b04f98aa6221d251e837273bf6d9d8392f2.tar.gz"
  sha256 "ebdf79302466873787c50f708dfb9f640d92f4de30b9c0ad3861a788e0606795"
  license "MIT"
  head "https://github.com/corpnewt/USBMap.git"

  def install
    bin.install "Scripts"
    bin.install "USBMap.py"
    bin.install "USBMap.command" => "usbmap"
  end
end
