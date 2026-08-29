class Skref < Formula
  desc "Validate, inspect, and prompt-render Agent Skills SKILL.md files"
  homepage "https://github.com/alephic-ai/skref"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/skref/releases/download/v1.2.0/skref-aarch64-apple-darwin.tar.xz"
      sha256 "fe9e2e0c2f91f4b655f8e5a37a090c5ea0c96a637ee5318d1050c872e43fb4d8"
    end
    on_intel do
      url "https://github.com/alephic-ai/skref/releases/download/v1.2.0/skref-x86_64-apple-darwin.tar.xz"
      sha256 "68af593371803a3faaa773486a861a922ebc1a40f7e7b18ff5b724534cc41df4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/skref/releases/download/v1.2.0/skref-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "35353adc9a25a7f80dab20e899b7223a564b7b76fe71d43011d1089462e6f3d5"
    end
    on_intel do
      url "https://github.com/alephic-ai/skref/releases/download/v1.2.0/skref-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "ad28e4b70498553d5ab9cb100e0d48e4cf79a73cda742450819c9a42a5a94b2b"
    end
  end

  def install
    bin.install "skref"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skref --version")
  end
end
