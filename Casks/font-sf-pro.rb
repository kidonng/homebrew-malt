cask "font-sf-pro" do
  version :latest
  sha256 :no_check

  url "https://devimages-cdn.apple.com/design/resources/download/SF-Font-Pro.dmg"
  name "SF Pro"
  desc "Sans-serif system font for iOS, macOS, and tvOS"
  homepage "https://developer.apple.com/fonts/"

  pkg "San Francisco Pro.pkg"

  uninstall pkgutil: "com.apple.pkg.SanFranciscoPro"
end
