class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.23.3"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.3/foac-aarch64-apple-darwin.tar.gz"
      sha256 "3d04c2d82ece5492813103583906f44675a4ee42682de27fda67ed1aeb660e1b"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.3/foac-x86_64-apple-darwin.tar.gz"
      sha256 "a66a4918206eb93908ae0df903b0f7a15a3632c682be18dfaf643aaef23cf243"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.3/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "edd3b43d8c062b428576c6698d804e0ba95e4cdf83a7816e3b8a65d06491cbcb"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.3/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aeb6f1b8f3ec209190e511815dcffe9ca07dd1df267a68bc0c29a8e00816c715"
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
