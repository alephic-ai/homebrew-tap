class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.29.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.29.0/foac-aarch64-apple-darwin.tar.gz"
      sha256 "78700128a6c59ef510d4ccaa220051e3ed0d0cb0661c0591d7ab2125048758a8"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.29.0/foac-x86_64-apple-darwin.tar.gz"
      sha256 "40c9c499e0c56628e0c1ecb50f8b02c2fc48974791c7acab60e3f86241a55529"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.29.0/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d7878fa155d201b411c97d12ab4947b4d27387b67c9fba91fa4967517d91c55"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.29.0/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8870e5f0060f69666cde2a4cc5740094f502908395fd7cbfecc8fc488c5fddd"
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
