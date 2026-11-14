class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.33.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.33.0/foac-aarch64-apple-darwin.tar.gz"
      sha256 "cfaf3b1db2c6fa0de142816c15842c37817fc72f4bc5f0e8ffea5b5c468aa907"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.33.0/foac-x86_64-apple-darwin.tar.gz"
      sha256 "2b151187dd9d5a59b7854402132b0d4f482156bd0e7223b38408ec832fb417ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.33.0/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "59199827043ecfc97273fafb275c68505f38e63f8a47c51bd7d7e2cab5513762"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.33.0/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c459edd1467a2183b7d0d28eff8f4fccf2f185cd7eb034be217b84f8f6fff1a9"
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
