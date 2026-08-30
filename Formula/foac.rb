class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.23.2"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.2/foac-aarch64-apple-darwin.tar.gz"
      sha256 "3f9a354fc2ebe4576101782693f5dd3be6b0f406bc845bc2ca12659b4a533ab8"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.2/foac-x86_64-apple-darwin.tar.gz"
      sha256 "d991293a43720dd4715b67aa51a3a5d80b57f0379f52e2fbd62c402f05d44cc0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.2/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5298482caeb34095c47acd417ba2fbfba9b3ea071ec9d595f4da355b3f92496f"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.23.2/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4663c3420b5d92ade73bd2143e82d399917072fa231c93850a17db2c60174af0"
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
