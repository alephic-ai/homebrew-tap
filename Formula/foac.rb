class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.24.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.24.1/foac-aarch64-apple-darwin.tar.gz"
      sha256 "aa9a6039ffd5c2ccfd8e2bf051834358069ca5cff15bb98087db29c7bed2bfc7"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.24.1/foac-x86_64-apple-darwin.tar.gz"
      sha256 "1ccf33974bf297b6ab62ad6849868c19efc705db355613bcc244a7d5d1057338"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.24.1/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4f50f444dcbd5e320826bc3a1bf009a4e081b2f3670402dff7f170a3a3a04881"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.24.1/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f21a4910a3b327bf00e8f623236dd6e089a112d7230bb9d23aebd99c6f9b2f91"
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
