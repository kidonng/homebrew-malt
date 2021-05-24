class OneKeyCpufriend < Formula
  desc "Generate customized CPUFriendDataProvider.kext for dynamic CPU power management"
  homepage "https://github.com/stevezhengshiqi/one-key-cpufriend"
  url "https://github.com/stevezhengshiqi/one-key-cpufriend.git",
      revision: "b47805927d127871a9ea8115a53810d517d481ba"
  version "b478059"
  head "https://github.com/stevezhengshiqi/one-key-cpufriend"

  def install
    bin.install "one-key-cpufriend.sh" => "cpufriend"
  end
end
