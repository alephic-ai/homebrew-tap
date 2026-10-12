class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.30.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.30.0/foac-aarch64-apple-darwin.tar.gz"
      sha256 "07c7abdba17e31fcede02ae0b36168aa7f80da6a8cb1ae49e3979bb90b9be092"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.30.0/foac-x86_64-apple-darwin.tar.gz"
      sha256 "3594439f6ce7d4fde7836824d255749f97245160104cea5b16ebd27f81169ece"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.30.0/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "30745f565f1458dfaf03a6999b7a1aa690ab4624b558dd7d46a9e599ec574b85"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.30.0/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "addfa29270988502474ceebc43742332f8786e2eb919b6b56fe8a19493778977"
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
