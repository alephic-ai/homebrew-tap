class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.31.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.31.0/foac-aarch64-apple-darwin.tar.gz"
      sha256 "3b7caf3f7845e6e692c2365d5773243d58efaa98d9cd360f46291338e0c59107"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.31.0/foac-x86_64-apple-darwin.tar.gz"
      sha256 "07b7ef4b311fbc4f8e8dabac72e48509dbb51ebff030b65c44f2588d5ae15904"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.31.0/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "255c23076136e20a83427bdbbb566c3f6c7d91b392c28653ee1cd71911bf9e9d"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.31.0/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "091462955518e3f29b901f1fe2721e4623d367b8226d9f5468ab6e2776422be4"
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
