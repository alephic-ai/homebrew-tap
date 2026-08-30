class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.22.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.22.1/foac-aarch64-apple-darwin.tar.gz"
      sha256 "de9882e1904e7f77fcdb6f8f5ac94780c2b371ed15af66557f6d119b8d917a16"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.22.1/foac-x86_64-apple-darwin.tar.gz"
      sha256 "cb94bef8711e2c34225c91a9e9dd0005a3adc14a1fcd3c94add3ee3b1d972770"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.22.1/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0bc480d5669818eb6789032352587da7832ced2039c909675bd1254c56d76d40"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.22.1/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf5f7c84c971db05100fac60f033d07149f4cfe0cf7c7f50d071ee87fff8c957"
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
