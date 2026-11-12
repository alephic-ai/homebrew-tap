class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.30.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.30.1/foac-aarch64-apple-darwin.tar.gz"
      sha256 "886304e2c636bf23e158124a538cb98859fbd9ca82da97ed36a1db8b8756f31f"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.30.1/foac-x86_64-apple-darwin.tar.gz"
      sha256 "97298325ef6d1a4bc56140f96bb166e29cfbf46679a12c0ee0413fad678c58e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.30.1/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "926ad09ae126e749b9d99bfa0f69458fa1682b8471bd07701c78d9d5a2a3db31"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.30.1/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fbe9366360da5c81bccabab9cead8515773912f128b740572658759958f05ae8"
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
