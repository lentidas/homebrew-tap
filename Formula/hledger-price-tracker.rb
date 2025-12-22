# typed: false
# frozen_string_literal: true

class HledgerPriceTracker < Formula
  desc "CLI tool to get market prices for commodities"
  homepage "https://github.com/lentidas/hledger-price-tracker"
  version "0.1.17"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.17/hledger-price-tracker_Darwin_x86_64.tar.gz"
      sha256 "17f9810eab1de7f05e0867e0b34595802fb1e0b96107486c2ca0b2de55069943"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.17/hledger-price-tracker_Darwin_arm64.tar.gz"
      sha256 "5e350897269c9112d02574a1790c02d4f1404ee441dcb9a6f39d7f97005b444b"
    end
  end

  on_linux do
    if Hardware::CPU.is_64_bit?
      if Hardware::CPU.intel?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.17/hledger-price-tracker_Linux_x86_64.tar.gz"
        sha256 "20b6ab46ed4a2a256b08b6424ec96756a2713e349ba507ce668edd6309e0f518"
      end
      if Hardware::CPU.arm?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.17/hledger-price-tracker_Linux_arm64.tar.gz"
        sha256 "2da6473fe2c68c00b5b75444c973e4f5e1cf460f8cd79e6a3a5c7c9a66007bbc"
      end
    end
  end

  def install
    bin.install "hledger-price-tracker"
  end
end
