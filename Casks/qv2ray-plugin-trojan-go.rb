cask "qv2ray-plugin-trojan-go" do
  version "1.0.1"
  sha256 "f4b5385d820a0d4b4b3fd44ea79d0468a075d44359b189f02f1994d9ccd83728"

  url "https://github.com/Qv2ray/QvPlugin-Trojan-Go/releases/download/v#{version}/QvTrojanGoPlugin.v#{version}.macOS-x64.so"
  appcast "https://github.com/Qv2ray/QvPlugin-Trojan-Go/releases.atom"
  name "Qv2ray Trojan-Go Plugin"
  desc "Add Trojan-Go support to Qv2ray"
  homepage "https://github.com/Qv2ray/QvPlugin-Trojan-Go"

  conflicts_with cask: "kidonng/malt/qv2ray-plugin-trojan-go-beta"
  depends_on formula: "kidonng/malt/trojan-go"
  depends_on cask: "qv2ray"

  artifact "QvTrojanGoPlugin.v#{version}.macOS-x64.so", target: "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/trojan-go.so"

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
