cask "qv2ray-plugin-command-beta" do
  version "3.0.0-pre3"
  sha256 "4db4c44fc2d3d6a34651f3be73a23fb0e8367241deae8a3d3af70c25e5209c4e"

  url "https://github.com/Qv2ray/QvPlugin-Command/releases/download/v#{version}/QvPlugin-Command.v#{version}.macOS-x64.so"
  name "Qv2ray Command Plugin (beta)"
  desc "Add command triggers to Qv2ray"
  homepage "https://github.com/Qv2ray/QvPlugin-Command"

  conflicts_with cask: "kidonng/malt/qv2ray-plugin-command"
  depends_on cask: "kidonng/malt/qv2ray-beta"

  artifact "QvPlugin-Command.v#{version}.macOS-x64.so", target: "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/command.so"

  postflight do
    system "xattr", "-d", "-r", "com.apple.quarantine", "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/command.so"
  end
end
