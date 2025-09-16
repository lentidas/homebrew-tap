# typed: false
# frozen_string_literal: true

class HledgerPriceTracker < Formula
  desc "CLI tool to get market prices for commodities"
  homepage "https://github.com/lentidas/hledger-price-tracker"
  version "0.1.13"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.13/hledger-price-tracker_Darwin_x86_64.tar.gz"
      sha256 "5be3f89d3506ec4f4e79120e17c5033d283dde36cfc2b70f2125ee90fa08a3cb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.13/hledger-price-tracker_Darwin_arm64.tar.gz"
      sha256 "4e37b0d613169f3e90abcb9f7c6900da5c84ec25603c99ed756639a94501e74c"
    end
  end

  on_linux do
    if Hardware::CPU.is_64_bit?
      if Hardware::CPU.intel?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.13/hledger-price-tracker_Linux_x86_64.tar.gz"
        sha256 "e0e7b08551da373d1813efc24e00a0d1166fab1ff971545c348924ff6b0fe3a2"
      end
      if Hardware::CPU.arm?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.13/hledger-price-tracker_Linux_arm64.tar.gz"
        sha256 "a3592d061c7ba3d068b67159c7829df90bc36a563bbb4a59776ffd13f8e9340a"
      end
    end
  end

  def install
    bin.install "hledger-price-tracker"
  end
end
