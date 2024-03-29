cask "qv2ray-plugin-ssr" do
  version "2.0.3"
  sha256 "a4b5e922e245e857e220b009965f30ecbc1293381b769ed5542fbe852b1a2f3c"

  url "https://github.com/Qv2ray/QvPlugin-SSR/releases/download/v#{version}/QvSSRPlugin.v#{version}.macOS-x64.so"
  name "Qv2ray ShadowsocksR Plugin"
  desc "Add ShadowsocksR support to Qv2ray"
  homepage "https://github.com/Qv2ray/QvPlugin-SSR"

  conflicts_with cask: "kidonng/malt/qv2ray-plugin-ssr-beta"
  depends_on cask: "qv2ray"

  artifact "QvSSRPlugin.v#{version}.macOS-x64.so", target: "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/ssr.so"

  postflight do
    system "xattr", "-d", "-r", "com.apple.quarantine", "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/ssr.so"
  end
end
