class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.27.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.27.0/foac-aarch64-apple-darwin.tar.gz"
      sha256 "f52d60ebde017717f9154f0060d730e1f1746a585ac2aa886d6571ce5f7715ce"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.27.0/foac-x86_64-apple-darwin.tar.gz"
      sha256 "2b7b1eace514c5a68eff3a45437abe1e0e64aac18a8bb83d06de32c0b1f25b90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.27.0/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c2af339820f737ad2087eecf83a2541e8c062d8197d1c8775d4a4166410a6104"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.27.0/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "85bc4d3c5a48783b19d5a9881b5cc312e5b7e6a8d92da8e5894fcfb52e10b65a"
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
