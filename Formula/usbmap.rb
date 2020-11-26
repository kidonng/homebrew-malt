class Usbmap < Formula
  desc "Map USB ports and create a custom injector kext"
  homepage "https://github.com/corpnewt/USBMap"
  url "https://github.com/corpnewt/USBMap.git",
      revision: "427f3b04f98aa6221d251e837273bf6d9d8392f2"
  version "427f3b0"
  license "MIT"
  head "https://github.com/corpnewt/USBMap.git"

  def install
    bin.install "Scripts"
    bin.install "USBMap.py"
    bin.install "USBMap.command" => "usbmap"
  end
end
