class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.24.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.24.0/foac-aarch64-apple-darwin.tar.gz"
      sha256 "f70f54cedf69b4f525e7e34c94e03bb93f55db07197a285eb0e69053a22325bf"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.24.0/foac-x86_64-apple-darwin.tar.gz"
      sha256 "17866cacad79474719321afd634e41e73de0e299ae05841e87559e909ecab763"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.24.0/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bcacdd856893e5eff025e275e2e83cfb3aa35dfc42941aaafea1288682620dbc"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.24.0/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5abeeec0bdcb02463d9fa3e5f38514e8a5db4d9eadb1248d3c06d3f2cd109ac7"
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
