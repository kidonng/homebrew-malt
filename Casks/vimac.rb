cask "vimac" do
  version "0.3.18"
  sha256 "3399746e79b4583b84f4f73c5d8f40859f92de77b41c17eba1b5c8b4bb512ed8"

  url "https://api.xuann.wang/api/app-center?owner=dexterleng&app=vimac&dist=sparkle&release=30"
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
