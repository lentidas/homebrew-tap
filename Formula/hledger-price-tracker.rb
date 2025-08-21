# typed: false
# frozen_string_literal: true

class HledgerPriceTracker < Formula
  desc "CLI tool to get market prices for commodities"
  homepage "https://github.com/lentidas/hledger-price-tracker"
  version "0.1.11"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.11/hledger-price-tracker_Darwin_x86_64.tar.gz"
      sha256 "bbe72b3a59b9ca3287785c32e182c5ad8581b14d13da381fff576187c05489f9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.11/hledger-price-tracker_Darwin_arm64.tar.gz"
      sha256 "0d4439a21dacad602a56a1250bc8372a45e035495daa09e24f6ebe6df7f85dc9"
    end
  end

  on_linux do
    if Hardware::CPU.is_64_bit?
      if Hardware::CPU.intel?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.11/hledger-price-tracker_Linux_x86_64.tar.gz"
        sha256 "6eafd3c793b7425b01e2266f6bbe39b6c9129978521fbac4a71dc78e5b173b47"
      end
      if Hardware::CPU.arm?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.11/hledger-price-tracker_Linux_arm64.tar.gz"
        sha256 "e5194ce884f4990fbc33b5c85d8a2cb1a31911a9c44c3ff99e3f1b1fdec79440"
      end
    end
  end

  def install
    bin.install "hledger-price-tracker"
  end
end
