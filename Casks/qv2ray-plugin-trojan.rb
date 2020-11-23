cask "qv2ray-plugin-trojan" do
  version "2.0.0"
  sha256 "b7d2ab3d61516d9b3046331d1f369362eb409782969779aadc986bfce5599506"

  url "https://github.com/Qv2ray/QvPlugin-Trojan/releases/download/v#{version}/QvTrojanPlugin.v#{version}.macOS-x64.so"
  name "Qv2ray Trojan Plugin"
  desc "Extend Qv2ray's Trojan functionality"
  homepage "https://github.com/Qv2ray/QvPlugin-Trojan"

  conflicts_with cask: "kidonng/malt/qv2ray-plugin-trojan-beta"
  depends_on cask: "qv2ray"

  artifact "QvTrojanPlugin.v#{version}.macOS-x64.so", target: "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/trojan.so"

  caveats <<~EOS
    Run the following command to allow the plugin to activate:

    xattr -d -r com.apple.quarantine ~/Library/Preferences/qv2ray/plugins/trojan.so
  EOS
end
