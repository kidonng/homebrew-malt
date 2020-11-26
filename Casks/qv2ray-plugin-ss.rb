cask "qv2ray-plugin-ss" do
  version "1.3"
  sha256 "828442a4f63a19ea38991500feb89390e59ddb2ecf086f2f8f3538846fc6c7fc"

  url "https://github.com/Qv2ray/QvPlugin-SS/releases/download/v#{version}/QvPlugin-SS.v#{version}.macOS-x64.so"
  appcast "https://github.com/Qv2ray/QvPlugin-SS/releases.atom"
  name "Qv2ray Shadowsocks Plugin"
  desc "Extend Qv2ray's Shadowsocks functionality"
  homepage "https://github.com/Qv2ray/QvPlugin-SS"

  conflicts_with cask: "kidonng/malt/qv2ray-plugin-ss-beta"
  depends_on cask: "qv2ray"

  artifact "QvPlugin-SS.v#{version}.macOS-x64.so", target: "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/ss.so"

  caveats <<~EOS
    Run the following command to allow the plugin to activate:

    xattr -d -r com.apple.quarantine ~/Library/Preferences/qv2ray/plugins/ss.so
  EOS
end
