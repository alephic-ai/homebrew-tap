class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.21.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.21.0/foac-aarch64-apple-darwin.tar.gz"
      sha256 "7a51923cdc986f1f4fe79cb244634c97f77b1013276d3ff49c2a4a05765badee"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.21.0/foac-x86_64-apple-darwin.tar.gz"
      sha256 "441ed44cf3d07dce5f8a3e5b91ccb7a8077786ecda2ab131e5421e5b21349b7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.21.0/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "89d362de13854521f9faac0fd153511a6fd4975494885ddb90573e34cd2ca4c7"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.21.0/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e09e8bf3e05b1cbff1063195b2e85fcd5b5f32afcc04246e17c0072c6ea18ae"
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
