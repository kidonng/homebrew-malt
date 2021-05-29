cask "macforge" do
  version "1.1.0"
  sha256 "5a28c4f43b9b9bb868e26e45096804a1b7ae604fbf3ae857bed63d495a43ec50"

  url "https://github.com/w0lfschild/app_updates/blob/master/MacForge1/MacForge.#{version}.zip"
  name "MacForge"
  homepage 'https://www.macenhance.com/macforge'

  app "MacForge.app"
end
