class Foac < Formula
  desc "Father Of All CLIs, one CLI for every service your agents touch"
  homepage "https://github.com/alephic-ai/foac"
  version "2.25.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.25.1/foac-aarch64-apple-darwin.tar.gz"
      sha256 "544f39c2c79216f84a807d27fdffd55be85821339bbba213960f44d3594857e2"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.25.1/foac-x86_64-apple-darwin.tar.gz"
      sha256 "1df996c603415468ef843920e954783f92c8461cc068e4a0c51e5f5fc88cae16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/foac/releases/download/v2.25.1/foac-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a01a470b26506ad1dda2bf73bc42a6d9c27e8ebe1892bf6460d0fb8d4a69b1ea"
    end
    on_intel do
      url "https://github.com/alephic-ai/foac/releases/download/v2.25.1/foac-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f3ef8d8d3f0c9edb0143eb1aef70a73f81f6ed300783856fa456e6c7a6e030a7"
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
