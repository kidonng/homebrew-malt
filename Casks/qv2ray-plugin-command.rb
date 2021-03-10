cask "qv2ray-plugin-command" do
  version "2.0.0"
  sha256 "e2d7799b9f3a97c938f39e4b09b1f6ef1075bcc4074f9c7b941f767023f55987"

  url "https://github.com/Qv2ray/QvPlugin-Command/releases/download/v#{version}/QvCommandPlugin.v#{version}.macOS-x64.so"
  name "Qv2ray Command Plugin"
  desc "Add command triggers to Qv2ray"
  homepage "https://github.com/Qv2ray/QvPlugin-Command"

  conflicts_with cask: "kidonng/malt/qv2ray-plugin-command-beta"
  depends_on cask: "qv2ray"

  artifact "QvCommandPlugin.v#{version}.macOS-x64.so", target: "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/command.so"

  caveats <<~EOS
    Run the following command to allow the plugin to activate:

    xattr -d -r com.apple.quarantine ~/Library/Preferences/qv2ray/plugins/command.so
  EOS
end
