cask "qv2ray-plugin-ssr-beta" do
  version "3.0.0-pre3"
  sha256 "4d61bd076dba375aed188bbd58ea9ba6629793061b9abad9a0d05c3b64063ca6"

  url "https://github.com/Qv2ray/QvPlugin-SSR/releases/download/v#{version}/QvPlugin-SSR.v#{version}.macOS-x64.so"
  name "Qv2ray ShadowsocksR Plugin (beta)"
  desc "Add ShadowsocksR support to Qv2ray"
  homepage "https://github.com/Qv2ray/QvPlugin-SSR"

  conflicts_with cask: "kidonng/malt/qv2ray-plugin-ssr"
  depends_on cask: "kidonng/malt/qv2ray-beta"

  artifact "QvPlugin-SSR.v#{version}.macOS-x64.so", target: "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/ssr.so"

  postflight do
    system "xattr", "-d", "-r", "com.apple.quarantine", "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/ssr.so"
  end
end
