class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.28.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.28.0/foac-aarch64-apple-darwin.tar.gz"
      sha256 "b4955a4320f98fcd2c52e8e22941496fde2d6c4ab43bfdbb425bdf426250b563"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.28.0/foac-x86_64-apple-darwin.tar.gz"
      sha256 "1302e3bdfc2f1203e1cb6fc4b17f6e00014a4686f3fa744cf546194ecc369e17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.28.0/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9f39b123ddd4063939244580b3b0b8dfb95ff269ca024cd1f76790dbce878b04"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.28.0/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a2d64c6cb8b8e3a9d89982d2674255242c739ff5759943369e39723b9e435ea4"
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
