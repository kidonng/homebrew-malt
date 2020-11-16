cask "uefitool" do
  version "A58"
  sha256 "2393b27d6f0ec6a1cf346ebc45137bf7b21af8927406b2f3822297524ec051f1"

  # github.com/LongSoft/UEFITool/ was verified as official when first introduced to the cask
  url "https://github.com/LongSoft/UEFITool/releases/download/#{version}/UEFITool_NE_#{version}_mac.zip"
  appcast "https://github.com/LongSoft/UEFITool/releases.atom"
  name "UEFITool"
  desc "UEFI firmware image viewer and editor"
  homepage "https://github.com/LongSoft/UEFITool"

  app "UEFITool.app"

  zap trash: [
    "~/Library/Preferences/org.longsoft.UEFITool.plist",
    "~/Library/Preferences/org.longsoft.UEFITool NE.plist",
    "~/Library/Saved Application State/org.longsoft.UEFITool.savedState",
  ]
end
