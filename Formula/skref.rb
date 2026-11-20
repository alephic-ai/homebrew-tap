class Skref < Formula
  desc "Validate, inspect, and prompt-render Agent Skills SKILL.md files"
  homepage "https://github.com/alephic-ai/skref"
  version "1.3.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/alephic-ai/skref/releases/download/v1.3.1/skref-aarch64-apple-darwin.tar.xz"
      sha256 "ffa5f3b27402fe9afcdff0fb01116527b63b537a2b32f6287321c14ba48e4a8a"
    end
    on_intel do
      url "https://github.com/alephic-ai/skref/releases/download/v1.3.1/skref-x86_64-apple-darwin.tar.xz"
      sha256 "d1dcfa0ccc61eeac3296103fafa6255278d0b6726663601094e1805f640050f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alephic-ai/skref/releases/download/v1.3.1/skref-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "ac211304de704e878f8acbbfdc03bcd371978ea238a405bf1fd7cf0fbbcd7f39"
    end
    on_intel do
      url "https://github.com/alephic-ai/skref/releases/download/v1.3.1/skref-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "8cc2c3f819370b065cc3f710d87805a18b2730c90b33d3423c9360893377bf68"
    end
  end

  def install
    bin.install "skref"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skref --version")
  end
end
