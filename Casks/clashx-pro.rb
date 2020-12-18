cask "clashx-pro" do
  version "1.31.1.1"
  sha256 "d5983b94c1ea0fd1a07aae8e3ba6f8af7c22ea4afa69d519748cb825356666b9"

  url "https://homebrew-malt.vercel.app/api/app-center?owner=clashx&app=clashx-pro&release=38"
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
