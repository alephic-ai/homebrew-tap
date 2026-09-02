class Eh < Formula
  desc "Pick a coding harness, pick a model provider, go"
  homepage "https://github.com/alephic-ai/exquisite-harness"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/exquisite-harness/releases/download/eh-v0.22.0/eh-darwin-arm64"
      sha256 "0214cd5e99e37100fe016c73696d640f4d5268f884938b79be2ee0776f68757c"
    end
    on_intel do
      url "https://github.com/alephic-ai/exquisite-harness/releases/download/eh-v0.22.0/eh-darwin-x64"
      sha256 "0e3b9b7ad52f812a45b063e7d2344025ce2b6d18756b42acf66f86999141492e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/exquisite-harness/releases/download/eh-v0.22.0/eh-linux-arm64"
      sha256 "a370c746bfb09ad37bd8a3f2e570f4e9225e2ec0f1654a4d607c3349e0e6e5fc"
    end
    on_intel do
      url "https://github.com/alephic-ai/exquisite-harness/releases/download/eh-v0.22.0/eh-linux-x64"
      sha256 "4f0c7a4467b73491fa4670ee08778e2a2500f740a46edbdb0d9f037e92c3f7e2"
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
