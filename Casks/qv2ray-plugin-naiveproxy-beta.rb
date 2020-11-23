cask "qv2ray-plugin-naiveproxy-beta" do
  version "3.0.0-pre3"
  sha256 "31d1cc925e2207c03c26a70493565fce92720f3ce57067e9ed4a609422eca540"

  url "https://github.com/Qv2ray/QvPlugin-NaiveProxy/releases/download/v#{version}/QvPlugin-NaiveProxy.v#{version}.macOS-x64.so"
  name "Qv2ray NaiveProxy Plugin (beta)"
  desc "Add NaiveProxy support to Qv2ray"
  homepage "https://github.com/Qv2ray/QvPlugin-NaiveProxy"

  conflicts_with cask: "kidonng/malt/qv2ray-plugin-naiveproxy"
  depends_on formula: "kidonng/malt/naiveproxy"
  depends_on cask: "kidonng/malt/qv2ray-beta"

  artifact "QvPlugin-NaiveProxy.v#{version}.macOS-x64.so", target: "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/naiveproxy.so"

  postflight do
    IO.write "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugin_settings/qvplugin_naiveproxy.conf", <<~EOS
      {
        "kernelPath": "/usr/local/bin/naive"
      }
    EOS
  end

  zap trash: "~/Library/Preferences/qv2ray/plugin_settings/qvplugin_naiveproxy.conf"

  caveats <<~EOS
    Run the following command to allow the plugin to activate:

    xattr -d -r com.apple.quarantine ~/Library/Preferences/qv2ray/plugins/naiveproxy.so
  EOS
end
