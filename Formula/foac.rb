class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.36.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.36.0/foac-aarch64-apple-darwin.tar.gz"
      sha256 "4f1954b8b9523074ffcbdfa5c31feb41580beda2adbf08454ad6c9bb0645fe66"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.36.0/foac-x86_64-apple-darwin.tar.gz"
      sha256 "852c6c2ef7d27e32d6b2bacbf62cd0018d2052f8128ad78d68a14e641979da6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.36.0/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d897065483625fdb318c65797478c37c919971b2c3cf3596409100fb9ad5dba5"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.36.0/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "833ec927fb515d34e1ba366b771d2eaea2676fbc63499ac98569568be49f42ee"
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
