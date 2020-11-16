cask "ioregistryexplorer" do
  version "3.0.2"
  sha256 "063cdcc98259e2cdb50413902e7ddfb4af94d559a4e30c19669a1d1b572fdb1b"

  url "https://github.com/khronokernel/IORegistryClone/raw/master/ioreg-302.zip"
  name "IORegistryExplorer"
  desc "IORegistry viewer"
  homepage "https://github.com/khronokernel/IORegistryClone"

  app "IORegistryExplorer.app"

  zap trash: [
    "~/Library/Preferences/com.apple.IORegistryExplorer.plist",
    "~/Library/Saved Application State/com.apple.IORegistryExplorer.savedState",
  ]
end
