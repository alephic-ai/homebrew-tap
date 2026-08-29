class Brulr < Formula
  desc "Burn AI tokens on purpose, and produce nothing at all"
  homepage "https://github.com/alephic-ai/brulr"
  version "0.4.3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/brulr/releases/download/v0.4.3/brulr-v0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "2cf6f8c27098590037f622445285f6ba6e425e9988ae0d5dba57125cd04d3381"
    end
    on_intel do
      url "https://github.com/alephic-ai/brulr/releases/download/v0.4.3/brulr-v0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "b5b1b8084a8596bc65be3e1f3f7e50eeb28758909ed737b5d8a34451bb737b24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/brulr/releases/download/v0.4.3/brulr-v0.4.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2685df40a6f0139da64529913f54fd70026f86fe6c232718f348dd6303ebe621"
    end
    on_intel do
      url "https://github.com/alephic-ai/brulr/releases/download/v0.4.3/brulr-v0.4.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99bb00025240a307c0493680ac18502d8516771aef88e500802e86d25295fc27"
    end
  end

  def install
    bin.install "brulr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brulr --version")
  end
end
