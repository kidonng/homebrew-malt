cask "qv2ray-beta" do
  version "2.7.0-pre1"
  sha256 "9cbe09f229384cb00f3b5f03c4b63241e6f93c3689e3e1bb190902e68c338899"

  url "https://github.com/Qv2ray/Qv2ray/releases/download/v#{version}/Qv2ray.v#{version}.macOS-x64.dmg"
  appcast "https://github.com/Qv2ray/Qv2ray/releases.atom#L3JlbGVhc2VzL3RhZy8oPzp2fFYpPyhbXHcuLV0rKQ=="
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
