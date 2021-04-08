cask "vimac" do
  version "0.3.17"
  sha256 "7affa34c660013f81300f7bf9d2abfd28c551c89d534fe9e1b7084561ceba0da"

  url "https://api.xuann.wang/api/app-center?owner=dexterleng&app=vimac&dist=sparkle&release=28"
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
