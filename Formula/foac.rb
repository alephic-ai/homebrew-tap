class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.32.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.32.0/foac-aarch64-apple-darwin.tar.gz"
      sha256 "aab45de7c6e86ded7b4fd1e85536d3b66f32b853ea29b894108dc30abd5684c8"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.32.0/foac-x86_64-apple-darwin.tar.gz"
      sha256 "84261df532eac39bd0c5ef2b32e51b91616ea3e40e730e8aa4ebe634c86ef2cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.32.0/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ee967d1f495c480574a878ccf71067c7aa463d0517a129b6cd7ee786f3b4dc4"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.32.0/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "20fdd50b4834daa87707e981714bbf7ddf84208dce9474398384456d984ecc76"
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
