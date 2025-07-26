# typed: false
# frozen_string_literal: true

class HledgerPriceTracker < Formula
  desc "CLI tool to get market prices for commodities"
  homepage "https://github.com/lentidas/hledger-price-tracker"
  version "0.1.9"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.9/hledger-price-tracker_Darwin_x86_64.tar.gz"
      sha256 "47061b671d58bb7deecf003ae1e0a75fa02dc21cc80292d1980510e16865a841"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.9/hledger-price-tracker_Darwin_arm64.tar.gz"
      sha256 "4a2f71ffc951b0649e5de6769289e297a06a32c9e324e4b40ab298c551a613bf"
    end
  end

  on_linux do
    if Hardware::CPU.is_64_bit?
      if Hardware::CPU.intel?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.9/hledger-price-tracker_Linux_x86_64.tar.gz"
        sha256 "4c6cb6263f7e472d56598814bf686fb0b22301dafadc41256c20a5f5f800172a"
      end
      if Hardware::CPU.arm?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.9/hledger-price-tracker_Linux_arm64.tar.gz"
        sha256 "a9401f33ed8d0a5597c916d0eabe16a85af4ce72e21265f2b0e0f9acf767a2e8"
      end
    end
  end

  def install
    bin.install "hledger-price-tracker"
  end
end
