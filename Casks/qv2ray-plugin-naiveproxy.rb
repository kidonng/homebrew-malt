cask "qv2ray-plugin-naiveproxy" do
  version "1.0.0"
  sha256 "0627ec0b81b86651bae58e0df0c82db3b48a235e1d7e6d6912a9a32f9be14ac7"

  url "https://github.com/Qv2ray/QvPlugin-NaiveProxy/releases/download/v#{version}/QvPlugin-NaiveProxy.v#{version}.macOS-x64.so"
  name "Qv2ray NaiveProxy Plugin"
  desc "Add NaiveProxy support to Qv2ray"
  homepage "https://github.com/Qv2ray/QvPlugin-NaiveProxy"

  conflicts_with cask: "kidonng/malt/qv2ray-plugin-naiveproxy-beta"
  depends_on formula: "kidonng/malt/naiveproxy"
  depends_on cask: "qv2ray"

  artifact "QvPlugin-NaiveProxy.v#{version}.macOS-x64.so", target: "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/naiveproxy.so"

  postflight do
    path = "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugin_settings"
    FileUtils.mkdir_p path
    IO.write "#{path}/qvplugin_naiveproxy.conf", <<~EOS
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
