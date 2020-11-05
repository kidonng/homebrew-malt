cask "qv2ray-beta" do
  version "2.6.3"
  sha256 "8554ff76b41dd4746cbd92afffeea32c990b5c9f836f9e71961656bb4bc235ae"

  url "https://github.com/Qv2ray/Qv2ray/releases/download/v#{version}/Qv2ray.v#{version}.macOS-x64.dmg"
  appcast "https://github.com/Qv2ray/Qv2ray/releases.atom#/releases/tag/(?:v|V)?([\\w.-]+)"
  name "Qv2ray"
  homepage "https://qv2ray.net/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "qv2ray.app"
end