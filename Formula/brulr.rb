class Brulr < Formula
  desc "Burn AI tokens on purpose, and produce nothing at all"
  homepage "https://github.com/alephic-ai/brulr"
  version "0.4.5"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/brulr/releases/download/v0.4.5/brulr-v0.4.5-aarch64-apple-darwin.tar.gz"
      sha256 "237e1056253bc348015eb0f79df91790d92095add265ed76a3c64c773615cccf"
    end
    on_intel do
      url "https://github.com/alephic-ai/brulr/releases/download/v0.4.5/brulr-v0.4.5-x86_64-apple-darwin.tar.gz"
      sha256 "f27ee394ac6b4ddc6365bc01da2aab3e4e371d422063055d07f8f364f165dd20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/brulr/releases/download/v0.4.5/brulr-v0.4.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0cfeda0f5b5dc64b678a794161f5e6c296fdcc3735de744a892e34ca94b00b6e"
    end
    on_intel do
      url "https://github.com/alephic-ai/brulr/releases/download/v0.4.5/brulr-v0.4.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f3dfd7e9826189bf32944d665e3032d763f44e12f833a7fc2fa6bf7fc5ba3cbf"
    end
  end

  def install
    bin.install "brulr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brulr --version")
  end
end
