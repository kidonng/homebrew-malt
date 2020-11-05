cask "qv2ray-beta" do
  version "2.7.0-pre1"
  sha256 "9cbe09f229384cb00f3b5f03c4b63241e6f93c3689e3e1bb190902e68c338899"

  url "https://github.com/Qv2ray/Qv2ray/releases/download/v#{version}/Qv2ray.v#{version}.macOS-x64.dmg"
  appcast "https://github.com/Qv2ray/Qv2ray/releases.atom#/releases/tag/(?:v|V)?([\\w.-]+)"
  name "Qv2ray"
  homepage "https://qv2ray.net/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "qv2ray.app"
end