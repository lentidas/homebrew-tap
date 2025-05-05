# typed: false
# frozen_string_literal: true

class HledgerPriceTracker < Formula
  desc "CLI tool to get market prices for commodities"
  homepage "https://github.com/lentidas/hledger-price-tracker"
  version "0.1.8"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.8/hledger-price-tracker_Darwin_x86_64.tar.gz"
      sha256 "4b78209a9dcb12555158e2a164b118a408199e8b778a94045b815d3f94ae8c1d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.8/hledger-price-tracker_Darwin_arm64.tar.gz"
      sha256 "86d7ab68a61ebc4f746fd6f4440b1a52c5f4fc8c90b0c570c098751c88fbdc06"
    end
  end

  on_linux do
    if Hardware::CPU.is_64_bit?
      if Hardware::CPU.intel?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.8/hledger-price-tracker_Linux_x86_64.tar.gz"
        sha256 "a148ae90993d1c69563bbea70937202641f02f8dbf69dcbe59079d2df8ffdc9e"
      end
      if Hardware::CPU.arm?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.8/hledger-price-tracker_Linux_arm64.tar.gz"
        sha256 "d5540eb21f1fe78a73ac38adae3a223b62b16e30e9c492f4d83e64d4529c409d"
      end
    end
  end

  def install
    bin.install "hledger-price-tracker"
  end
end
