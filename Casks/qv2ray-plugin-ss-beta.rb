cask "qv2ray-plugin-ss-beta" do
  version "3.0.0-pre3"
  sha256 "8264df5ce46e59ea50b7ffb8c7dd23530485f5b28011fe94f28c1efc51f9b0cc"

  url "https://github.com/Qv2ray/QvPlugin-SS/releases/download/v#{version}/QvPlugin-SS.v#{version}.macOS-x64.so"
  name "Qv2ray Shadowsocks Plugin (beta)"
  desc "Extend Qv2ray's Shadowsocks functionality"
  homepage "https://github.com/Qv2ray/QvPlugin-SS"

  conflicts_with cask: "kidonng/malt/qv2ray-plugin-ss"
  depends_on cask: "kidonng/malt/qv2ray-beta"

  artifact "QvPlugin-SS.v#{version}.macOS-x64.so", target: "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/ss.so"

  postflight do
    system "xattr", "-d", "-r", "com.apple.quarantine", "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/ss.so"
  end
end
