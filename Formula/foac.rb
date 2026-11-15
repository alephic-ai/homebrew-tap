class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.35.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.35.0/foac-aarch64-apple-darwin.tar.gz"
      sha256 "148b99edc0d6f1cc87e2b62a953c29ef5b7f33a1906573a61c3d2702366a6b71"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.35.0/foac-x86_64-apple-darwin.tar.gz"
      sha256 "5ee705a234ad6624e6ac26099599cdd978dd6569ba6c9b480930b5c0d618fca6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.35.0/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed61802547dad248c89b4e5d56630e819fab41a26f19705ed54d266f5275d9bc"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.35.0/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19c05413750209225c327881b70cef258bb04f9fcb03b5633ef035988f3147dc"
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
