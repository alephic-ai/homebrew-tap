class Brulr < Formula
  desc "Burn AI tokens on purpose, and produce nothing at all"
  homepage "https://github.com/alephic-ai/brulr"
  version "0.4.4"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/brulr/releases/download/v0.4.4/brulr-v0.4.4-aarch64-apple-darwin.tar.gz"
      sha256 "73e9fae35219bd787fc13cbbcc59f258b1d4ccb8a9c43140ce2b0439c5800ab3"
    end
    on_intel do
      url "https://github.com/alephic-ai/brulr/releases/download/v0.4.4/brulr-v0.4.4-x86_64-apple-darwin.tar.gz"
      sha256 "3c5f261e34830776ae000fc4b91db092ba2fa642580e2f3d91679e0a0b4b6aeb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/brulr/releases/download/v0.4.4/brulr-v0.4.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aa88dfdced70e9d5707010e8e62be7ee1eda3a7cc967a1641043985a372aea67"
    end
    on_intel do
      url "https://github.com/alephic-ai/brulr/releases/download/v0.4.4/brulr-v0.4.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "73feeddbca40a510bf4f6488c9489ac0991b41253f893558a0dc18df240cc130"
    end
  end

  def install
    bin.install "brulr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brulr --version")
  end
end
