# typed: false
# frozen_string_literal: true

class HledgerPriceTracker < Formula
  desc "CLI tool to get market prices for commodities"
  homepage "https://github.com/lentidas/hledger-price-tracker"
  version "0.1.6"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.6/hledger-price-tracker_Darwin_x86_64.tar.gz"
      sha256 "16f1a05627b9ff2bc952944544a119aaa86e6c2f7508dc05052a4a2cec83f77f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.6/hledger-price-tracker_Darwin_arm64.tar.gz"
      sha256 "5015b8f702835fbe7dbf6a9f909401967f03e8ca6cb259a47986809d51784861"
    end
  end

  on_linux do
    if Hardware::CPU.is_64_bit?
      if Hardware::CPU.intel?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.6/hledger-price-tracker_Linux_x86_64.tar.gz"
        sha256 "5ab5759da6654078fa10dbb0e807ccb17b446b4494e7ea08317d23e83c96675c"
      end
      if Hardware::CPU.arm?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.6/hledger-price-tracker_Linux_arm64.tar.gz"
        sha256 "40b1e4cf68bffccde480754610128c88c9e858861ab840fa35ab110355937935"
      end
    end
  end

  def install
    bin.install "hledger-price-tracker"
  end
end
