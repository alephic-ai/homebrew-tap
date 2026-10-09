class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.29.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.29.1/foac-aarch64-apple-darwin.tar.gz"
      sha256 "bb0240404103412d4ff0888739be26c65719bfc0df46fd8f029ba40e98fe53f4"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.29.1/foac-x86_64-apple-darwin.tar.gz"
      sha256 "e01377f54918688015c8d423786aeec356ecbbc4633bc6fcdea70fc2ff11b86e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.29.1/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e9f50f9cdb337e1a3b9d7ab18d3fad0f8dc6237d0d7fbdfc1c9fcc13c916e679"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.29.1/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e007d2cc185c42c2d6fa77afb085102be6f36a3478f44fb86b00a0c748cac5d3"
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
