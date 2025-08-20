# typed: false
# frozen_string_literal: true

class HledgerPriceTracker < Formula
  desc "CLI tool to get market prices for commodities"
  homepage "https://github.com/lentidas/hledger-price-tracker"
  version "0.1.10"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.10/hledger-price-tracker_Darwin_x86_64.tar.gz"
      sha256 "5708f81415e6f37d89edb07187e986db400f66431df71727762a9a61c0f7eb35"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.10/hledger-price-tracker_Darwin_arm64.tar.gz"
      sha256 "83a818b7a95fec289daccaa26c3ef56cf0d18e33abe5c6adabc389f79acd703b"
    end
  end

  on_linux do
    if Hardware::CPU.is_64_bit?
      if Hardware::CPU.intel?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.10/hledger-price-tracker_Linux_x86_64.tar.gz"
        sha256 "307d9acb400745731dfe291762c5957b0cf4fa8324e4283628ab1a68dd642242"
      end
      if Hardware::CPU.arm?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.10/hledger-price-tracker_Linux_arm64.tar.gz"
        sha256 "4817f29f2abd7847b0d9d42c2c0915c365b1704318e2decd86d7800c017e99d6"
      end
    end
  end

  def install
    bin.install "hledger-price-tracker"
  end
end
