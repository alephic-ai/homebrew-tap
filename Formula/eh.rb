class Eh < Formula
  desc "Pick a coding harness, pick a model provider, go"
  homepage "https://github.com/alephic-ai/exquisite-harness"
  version "0.22.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/exquisite-harness/releases/download/eh-v0.22.1/eh-darwin-arm64"
      sha256 "906f9e5b753d07bdf4eab75aa55ac9cb28506e44c321c17f0565a18590c8598d"
    end
    on_intel do
      url "https://github.com/alephic-ai/exquisite-harness/releases/download/eh-v0.22.1/eh-darwin-x64"
      sha256 "091c88de02401c80f5fd08e32882e5bd022ada2dde5048f4b088a7165d3ae608"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/exquisite-harness/releases/download/eh-v0.22.1/eh-linux-arm64"
      sha256 "05761be50903442948163677108eb4f87455b5bc5880041388c8803077f78fb5"
    end
    on_intel do
      url "https://github.com/alephic-ai/exquisite-harness/releases/download/eh-v0.22.1/eh-linux-x64"
      sha256 "9ce39a91e0ed78225a97672976ce03d5db7dcee2cff019d7d5f328e7ee8cb6df"
    end
  end

  # The assets are bare binaries, not archives, so Homebrew stages
  # the single downloaded file under its own name.
  def install
    bin.install Dir["eh-*"].first => "eh"
  end

  def caveats
    "Use 'brew upgrade eh', not 'eh update': the next brew upgrade overwrites a self-replaced binary."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eh --version")
  end
end
