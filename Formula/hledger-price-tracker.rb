# typed: false
# frozen_string_literal: true

class HledgerPriceTracker < Formula
  desc "CLI tool to get market prices for commodities"
  homepage "https://github.com/lentidas/hledger-price-tracker"
  version "0.1.7"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.7/hledger-price-tracker_Darwin_x86_64.tar.gz"
      sha256 "ebca437e9ec32752d77cc54129d84f710e41a75e3a805f02e301039509aa7cdf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.7/hledger-price-tracker_Darwin_arm64.tar.gz"
      sha256 "7dbfeca2f168cf83c03392980823613330ce8bc8e943f4a5b01fcb3f7ef22bf0"
    end
  end

  on_linux do
    if Hardware::CPU.is_64_bit?
      if Hardware::CPU.intel?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.7/hledger-price-tracker_Linux_x86_64.tar.gz"
        sha256 "83a5941b379832b70278cb9699b3e198ea43cd740bcf70b6cf386335b92d5faa"
      end
      if Hardware::CPU.arm?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.7/hledger-price-tracker_Linux_arm64.tar.gz"
        sha256 "810666cfbdf638f4c7276e4fe4744f8bcfc9f43ffa882da4400be8ec1ea3e39e"
      end
    end
  end

  def install
    bin.install "hledger-price-tracker"
  end
end
