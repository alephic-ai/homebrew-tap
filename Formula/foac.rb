class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.25.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.25.0/foac-aarch64-apple-darwin.tar.gz"
      sha256 "19deb817b785b40401b4fc522f2769736cadfc8702d975245544a605d807258f"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.25.0/foac-x86_64-apple-darwin.tar.gz"
      sha256 "c517536ca72363631985c5820505a9a5f9f37aa3db43c0d8110cde72e183dd0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.25.0/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "571fb820228383ae6fed6de73fe0b502997e633e9a96a23c2d07dfe2f47157c5"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.25.0/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47a78e4e21643d1d9a234b557a72f199f222a5ae2cc121326c077c6e51323f3d"
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
