# typed: false
# frozen_string_literal: true

class HledgerPriceTracker < Formula
  desc "CLI tool to get market prices for commodities"
  homepage "https://github.com/lentidas/hledger-price-tracker"
  version "0.1.15"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.15/hledger-price-tracker_Darwin_x86_64.tar.gz"
      sha256 "2545a0b50dfda74a4628518382e15bb322be8de50b5c77a27868c11d59afdc9e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.15/hledger-price-tracker_Darwin_arm64.tar.gz"
      sha256 "9b056634ced37a10f4944da470356954c28ca8e1e518476aca28e49c1518bc44"
    end
  end

  on_linux do
    if Hardware::CPU.is_64_bit?
      if Hardware::CPU.intel?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.15/hledger-price-tracker_Linux_x86_64.tar.gz"
        sha256 "0b4b832fd99b1aa28a15da2bd5bf9dfe67b8f2bf4d0563b32fb121ece1987972"
      end
      if Hardware::CPU.arm?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.15/hledger-price-tracker_Linux_arm64.tar.gz"
        sha256 "e4f5d884cf47e9f1f0150c3bdb0489165bd192d0b9d11638fc9188755c4ad236"
      end
    end
  end

  def install
    bin.install "hledger-price-tracker"
  end
end
