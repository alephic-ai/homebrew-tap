class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.21.3"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.21.3/foac-aarch64-apple-darwin.tar.gz"
      sha256 "f024bb53d617183bd7a84aa0845cf85619d930662bc39fa3e3ca5c5080c6c1a8"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.21.3/foac-x86_64-apple-darwin.tar.gz"
      sha256 "01902ef5be7eb8191f72c942e9a3ee50c87723700ddafa606fcd7f428c3361e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.21.3/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "21c77d6fbd652f9b89526fe0e81c1d1e6e7085677b92fdf9381ac64aba5e9ca8"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.21.3/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bad3bb7c966979f1b2cc96eb7ad4948060c83a240b84fdd1b93662f3b1a69688"
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
