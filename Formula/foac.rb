class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.23.4"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.4/foac-aarch64-apple-darwin.tar.gz"
      sha256 "4d3d8bb402e75846d9eee8e75eb34992f50e3c49e80898806723505e5f504aa4"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.4/foac-x86_64-apple-darwin.tar.gz"
      sha256 "58e552181d030a1827a233808fced450719512c0e00a2ae1e20d96ec95dc867b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.4/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "36523169b5bafc062a447269a08074f7beaa03733dbfe851693fc094f39906f2"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.4/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49d7afc4e6e77c50ebb991c2a0fb0b3f5b3ead8fad4bf7fc25e57438a208f798"
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
