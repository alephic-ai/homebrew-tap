class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.20.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.20.0/foac-aarch64-apple-darwin.tar.gz"
      sha256 "422fcf758f9e7939d516feea72229884595de1556f099dbf967675bbd851e386"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.20.0/foac-x86_64-apple-darwin.tar.gz"
      sha256 "bdbfb7b5f1b23f8b906626f985ff12efc043b859eadced1cf4e639404b774f6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.20.0/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1516d16ca5669ce4c14bfe312b3b50dd0384c5d6051665f6a8a966d05fbe617c"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.20.0/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "83a339273b1682628edb791734cafec52150661f9499ea5f43b38d369814d714"
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
