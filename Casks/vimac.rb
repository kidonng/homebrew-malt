cask "vimac" do
  version "0.3.19"
  sha256 "a03ac25edca2190207c70825b154d20a3c6bc5b0d7b705d1ced95a7d0961c4a0"

  url "https://api.xuann.wang/api/app-center?owner=dexterleng&app=vimac&dist=sparkle&release=31"
  name "Vimac"
  desc "Keyboard-driven navigation and control tool"
  homepage "https://vimacapp.com/"

  auto_updates true

  app "Vimac.app"

  zap trash: [
    "~/Library/Application Support/Vimac",
    "~/Library/Caches/dexterleng.vimac",
    "~/Library/Preferences/dexterleng.vimac.plist",
  ]
end
