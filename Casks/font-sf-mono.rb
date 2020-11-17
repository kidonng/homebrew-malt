cask "font-sf-mono" do
  version :latest
  sha256 :no_check

  url "https://devimages-cdn.apple.com/design/resources/download/SF-Mono.dmg"
  name "SF Mono"
  desc "Monospaced variant of San Francisco"
  homepage "https://developer.apple.com/fonts/"

  pkg "SF Mono Fonts.pkg"

  uninstall pkgutil: "com.apple.pkg.SFMonoFonts"
end
