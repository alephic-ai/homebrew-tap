class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.22.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.22.0/foac-aarch64-apple-darwin.tar.gz"
      sha256 "889116e0342e79b4bdfa099a89d8031ce3af31df0dde6fbd6bfdc238b030dfbb"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.22.0/foac-x86_64-apple-darwin.tar.gz"
      sha256 "e5316c38925c3193125e4941134d3eb7d5cb98a11ff82bf007ec73ac0bd6e09c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.22.0/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "11a5cadb9737986253dfc98349288b05dc95081136014aacf5b455c26be06bc0"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.22.0/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "71738bbb972101ef03096c9f7f6d169b6a4463c71e6f2c4d8046463048beef93"
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
