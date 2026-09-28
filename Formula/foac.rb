class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.26.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.26.0/foac-aarch64-apple-darwin.tar.gz"
      sha256 "b9f0c2c6952c89ea454cdb6ea3f99184061194bf0ce9743c8f40045206254fcf"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.26.0/foac-x86_64-apple-darwin.tar.gz"
      sha256 "735db4aadf163a08a8caa24bc43d39aabb17f0139a61f9613e87e2efeade5fd0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.26.0/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "225414efe75d4a8fb028a89c6a1bf7fa181fe80316efd3106742b97c53b7325f"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.26.0/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d74d1b598d1a4372db6c1691d85ad97a514c03e8e74c4eb82cc414d6eb097eb"
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
