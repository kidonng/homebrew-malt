cask "qv2ray-plugin-trojan-go-beta" do
  version "3.0.0-pre3"
  sha256 "cb20efefc7633d2eb8d82d10bd4338c00e3ea2b8f4d294a3af7e45185c4acbb3"

  url "https://github.com/Qv2ray/QvPlugin-Trojan-Go/releases/download/v#{version}/QvPlugin-TrojanGo.v#{version}.macOS-x64.so"
  name "Qv2ray Trojan-Go Plugin (beta)"
  desc "Add Trojan-Go support to Qv2ray"
  homepage "https://github.com/Qv2ray/QvPlugin-Trojan-Go"

  conflicts_with cask: "kidonng/malt/qv2ray-plugin-trojan-go"
  depends_on formula: "kidonng/malt/trojan-go"
  depends_on cask: "kidonng/malt/qv2ray-beta"

  artifact "QvPlugin-TrojanGo.v#{version}.macOS-x64.so", target: "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/trojan-go.so"

  postflight do
    path = "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugin_settings"
    FileUtils.mkdir_p path
    IO.write "#{path}/qvtrojango_plugin.conf", <<~EOS
      {
        "kernelPath": "/usr/local/bin/trojan-go"
      }
    EOS
  end

  zap trash: "~/Library/Preferences/qv2ray/plugin_settings/qvtrojango_plugin.conf"

  caveats <<~EOS
    Run the following command to allow the plugin to activate:

    xattr -d -r com.apple.quarantine ~/Library/Preferences/qv2ray/plugins/trojan-go.so
  EOS
end
