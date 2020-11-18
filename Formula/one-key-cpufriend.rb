class OneKeyCpufriend < Formula
  desc "Generate customized CPUFriendDataProvider.kext for dynamic CPU power management"
  homepage "https://github.com/stevezhengshiqi/one-key-cpufriend"
  url "https://github.com/stevezhengshiqi/one-key-cpufriend/archive/b47805927d127871a9ea8115a53810d517d481ba.tar.gz"
  version "b478059"
  sha256 "39aa5b0cd89c2bf68d7a37c53e5f597851f4f9e5dd7145d79cf5226fdaa35d15"
  head "https://github.com/stevezhengshiqi/one-key-cpufriend"

  def install
    bin.install "one-key-cpufriend.sh" => "cpufriend"
  end
end
