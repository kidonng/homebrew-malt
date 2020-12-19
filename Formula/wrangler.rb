# Conflicts with homebrew/core/wrangler
class Wrangler < Formula
  desc "Cloudflare Workers CLI"
  homepage "https://github.com/cloudflare/wrangler"
  url "https://github.com/cloudflare/wrangler/releases/download/v1.12.3/wrangler-v1.12.3-x86_64-apple-darwin.tar.gz"
  version "1.12.3"
  sha256 "deb108e37cb5d9b3a7f04cd716ed97286b458e66e74f6ba88e38e2461d809a68"
  license "Apache-2.0"

  def install
    bin.install "wrangler"
  end
end
