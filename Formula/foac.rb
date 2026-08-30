class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.23.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.1/foac-aarch64-apple-darwin.tar.gz"
      sha256 "db4410f204c60075ac6c73ed387b34a55221cc7d29a7fbba8c7e80cba78410cb"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.1/foac-x86_64-apple-darwin.tar.gz"
      sha256 "b17dfa5205194528b948d22daf0946685ae2a4e7cf94133f6397ccd1d8ff16c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.1/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7db81eaceeb466c0beb6eb6ee6b517f8ee22f20bb2a0123d50fa160b07bf5576"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.1/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "43134c9d50e7b0bb5c00ba45d65c4c1998963205cf95fe39164c18864c8dc661"
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
