class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.21.2"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.21.2/foac-aarch64-apple-darwin.tar.gz"
      sha256 "038b31ad0cc28bd807e060155da161c1eb875ff13bd0e127c9020aa455b51ea6"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.21.2/foac-x86_64-apple-darwin.tar.gz"
      sha256 "42d2eea61e46b072ae9d1b8181669ba8c6b69108113d40a496e8ee99f53eea02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.21.2/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e135db6a9b8c5fe4bd3864705c4f8a4479bf92443a2cc2325f058b18fe288bb6"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.21.2/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cbaff361494c27e41676e91a3125481715d67f5921d9e328a3012f0552b171d7"
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
