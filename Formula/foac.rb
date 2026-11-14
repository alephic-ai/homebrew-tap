class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.34.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.34.0/foac-aarch64-apple-darwin.tar.gz"
      sha256 "f30bfade2d34148e4dd4f25f59f764d543c6622d7d5275a7bc0975c6f100836d"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.34.0/foac-x86_64-apple-darwin.tar.gz"
      sha256 "17674433ab95556841bbdb712bb1f7e602d4f86d708cc4f7df2a80399f957a87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.34.0/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "239be3da126b6a554fdc452a9f80fe71f3855ccf5c5eb50c002743020df4c315"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.34.0/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db1b2e4394a302675f2086c3f7b618d43dacf5a852a4c257e4979b592d5d5c6f"
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
