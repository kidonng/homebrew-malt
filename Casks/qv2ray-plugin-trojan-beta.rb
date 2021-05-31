cask "qv2ray-plugin-trojan-beta" do
  version "3.0.0-pre3"
  sha256 "48ad7b68ce978f095d92acb41cc97f61eb454a4ca4becbcc7e180a753ce44207"

  url "https://github.com/Qv2ray/QvPlugin-Trojan/releases/download/v#{version}/QvPlugin-Trojan.v#{version}.macOS-x64.so"
  name "Qv2ray Trojan Plugin (beta)"
  desc "Extend Qv2ray's Trojan functionality"
  homepage "https://github.com/Qv2ray/QvPlugin-Trojan"

  conflicts_with cask: "kidonng/malt/qv2ray-plugin-trojan-beta"
  depends_on cask: "kidonng/malt/qv2ray-beta"

  artifact "QvPlugin-Trojan.v#{version}.macOS-x64.so", target: "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/trojan.so"

  postflight do
    system "xattr", "-d", "-r", "com.apple.quarantine", "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/trojan.so"
  end
end
