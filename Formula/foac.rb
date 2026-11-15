class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.35.2"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.35.2/foac-aarch64-apple-darwin.tar.gz"
      sha256 "7680b56eed815c1a810647d39b6e505980bae53babb21d4fc68b9014e2ea4ea9"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.35.2/foac-x86_64-apple-darwin.tar.gz"
      sha256 "17d0170574ab4f93ea28f11d8be49506b9bc634539a7d6d313fff4c5ab5ce19d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.35.2/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f47d53db25a56518526e8a7161b3b05c471b474bad25cd7cef86c909a8fa8272"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.35.2/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "135aaf66f378e0f61b06efdb4cdae7eb8d124a9bd020303e5efc8ffe240224e2"
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
