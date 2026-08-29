class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.21.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.21.1/foac-aarch64-apple-darwin.tar.gz"
      sha256 "7656b66ca425fd9cb5867ad982a8a4b501a21685485563a559763a972c897565"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.21.1/foac-x86_64-apple-darwin.tar.gz"
      sha256 "97739c2d993a0d7af4c719c5b3ac7ebfa7fea08c96f619d6c2b4976b730504f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.21.1/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d08c418cf5566573e52a2c5c550276162d05376138a0baa667723cfe092209bd"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.21.1/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "339d0a85e213a8a591f49560f57ba74ab6167f053e0f897121478099e76b1db0"
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
