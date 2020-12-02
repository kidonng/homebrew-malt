cask "clashx-pro" do
  version "1.31.0.1"
  sha256 "a606c0558c3f391af832ef8f1ef1c667bf0b90cad69107e9c645abb08360362f"

  url "https://homebrew-malt.vercel.app/api/app-center?owner=clashx&app=clashx-pro&release=37"
  name "ClashX Pro"
  desc "Rule-based custom proxy with GUI based on Clash (Pro version)"
  homepage "https://github.com/yichengchen/clashX"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "ClashX Pro.app"

  zap trash: [
    "~/Library/Preferences/com.west2online.ClashXPro.plist",
    "~/Library/Logs/ClashX Pro",
    "~/.config/clash",
  ]
end
