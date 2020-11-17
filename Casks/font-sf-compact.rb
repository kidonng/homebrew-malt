cask "font-sf-compact" do
  version :latest
  sha256 :no_check

  url "https://devimages-cdn.apple.com/design/resources/download/SF-Font-Compact.dmg"
  name "SF Compact"
  desc "Sans-serif system font for watchOS"
  homepage "https://developer.apple.com/fonts/"

  pkg "San Francisco Compact.pkg"

  uninstall pkgutil: "com.apple.pkg.SanFranciscoCompact"
end
