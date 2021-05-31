cask "glance-chamburr" do
  version "1.3.0"
  sha256 "dd1164ced379102c8fc57a1325e0d9f765960a920719b0ebca7999678311a7c9"

  url "https://github.com/chamburr/glance/releases/download/v#{version}/Glance-#{version}.dmg"
  name "Glance"
  desc "Utility to provide quick look previews for files that aren't natively supported"
  homepage "https://github.com/chamburr/glance"

  depends_on macos: ">= :catalina"

  app "Glance.app"

  # https://github.com/chamburr/glance#installation
  postflight do
    entitlements = `mktemp`
    IO.write entitlements, <<~EOS
      <?xml version="1.0" encoding="UTF-8"?><!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd"><plist version="1.0"><dict><key>com.apple.security.app-sandbox</key><true/><key>com.apple.security.application-groups</key><array><string>group.com.chamburr.glance</string></array><key>com.apple.security.files.user-selected.read-only</key><true/></dict></plist>
    EOS
    system "codesign", "-s", "-", "-f", "--deep", "--entitlements", entitlements, "#{appdir}/Glance.app"

    system "xattr", "-d", "-r", "com.apple.quarantine", "#{appdir}/Glance.app"
  end

  zap trash: [
    "~/Library/Application Scripts/com.samuelmeuli.Glance",
    "~/Library/Application Scripts/com.samuelmeuli.Glance.QLPlugin",
    "~/Library/Containers/com.samuelmeuli.Glance",
    "~/Library/Containers/com.samuelmeuli.Glance.QLPlugin",
    "~/Library/Group Containers/group.com.samuelmeuli.glance",
  ]
end
