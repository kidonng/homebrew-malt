cask "qv2ray-beta" do
  version "2.7.0-pre2"
  sha256 "dbf97e22e8c8081cd1ac07b880e0c3dd03e3f34a9a390729c7a95bfc8b974647"

  url "https://github.com/Qv2ray/Qv2ray/releases/download/v#{version}/Qv2ray.v#{version}.macOS-x64.dmg"
  name "Qv2ray"
  desc "V2Ray GUI Client with extensive protocol support"
  homepage "https://qv2ray.net/"

  conflicts_with cask: "qv2ray"
  depends_on macos: ">= :mojave"

  app "qv2ray.app"

  zap trash: [
    "~/Library/Preferences/com.github.qv2ray.plist",
    "~/Library/Preferences/qv2ray",
    "~/Library/Saved Application State/com.github.qv2ray.savedState",
  ]
end
