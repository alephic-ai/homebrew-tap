class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.35.3"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.35.3/foac-aarch64-apple-darwin.tar.gz"
      sha256 "15bcd232d3d7b4c74bd8426ce86fd8eb68e03187d0c83b91362cd74634f199bf"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.35.3/foac-x86_64-apple-darwin.tar.gz"
      sha256 "b0f746c4621312e0a61f383cdbde919e02aec8eb97c1f3e32dcf94c256c3ae2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.35.3/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ad5eac0ca47454361f7d1e85deb3358fd77cab0e984f865444a77dd7d5bc2715"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.35.3/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c156085eaf94ac01216a5de4fc753b9cbcc8fa3cb5896a89fd2e0c5c8b6f4270"
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
