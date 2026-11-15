class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.35.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.35.1/foac-aarch64-apple-darwin.tar.gz"
      sha256 "92510e8991f53193c4b010f8e835989e48667dbb92769d137014557bd91a2097"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.35.1/foac-x86_64-apple-darwin.tar.gz"
      sha256 "4e218289eb5e2f94ad5c18cdf007f85ccffa36eb3ddd6b0448dde58ad6284667"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.35.1/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "750139d563105ecbdd7ba42f4a4fb66de9c7fcb5928786b09b1bf450333720e0"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.35.1/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d310ea0cfba9b6a8b0494c0e22f77297903034109a39d2bc4d48ba081bf9847"
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
