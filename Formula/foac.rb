class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.23.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.0/foac-aarch64-apple-darwin.tar.gz"
      sha256 "39e5194c6e7a69e8936feb155dbb1f4f55b7db95260ed8df0607b798fb3fec8d"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.0/foac-x86_64-apple-darwin.tar.gz"
      sha256 "14ff6afaae5386cdc03de717e0b27fc28e57d43cb0c3abdc5a958f63068ebd60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.0/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1988a0ed2425c1f7db09d47b995aa9fdef48528c95324af396e3d093f792b837"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.0/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce042ce6dd6e1dbd89a7d7085aa364e406011f7b492404838944714f8c2cfdee"
    end
  end

  def install
    bin.install "foac"
  end

  def caveats
    "Use 'brew upgrade foac', not 'foac update': the next brew upgrade overwrites a self-replaced binary."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/foac version")
  end
end
