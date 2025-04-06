# typed: false
# frozen_string_literal: true

class HledgerPriceTracker < Formula
  desc "CLI tool to get market prices for commodities"
  homepage "https://github.com/lentidas/hledger-price-tracker"
  version "0.1.4"
  license "GPL-3.0"

  bottle do
    root_url "https://github.com/lentidas/homebrew-tap/releases/download/hledger-price-tracker-0.1.4"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "1cc60494a0b5f6dc25aa07f080ff4a81855b7d6ef673282b73f32f717306b1b5"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "5adba29b6c84ad69bf2b0b50a6fae31008ee8f2b4949f369fffa57e250931871"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.4/hledger-price-tracker_Darwin_x86_64.tar.gz"
      sha256 "36cf4fb335c52baef48b2a010422b3de23323f05f2855ea459673fe86cac7817"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.4/hledger-price-tracker_Darwin_arm64.tar.gz"
      sha256 "a151d664ea1c871c1028e537556f60624594e1a028eb391370fa4336a6a9f0e0"
    end
  end

  on_linux do
    if Hardware::CPU.is_64_bit?
      if Hardware::CPU.intel?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.4/hledger-price-tracker_Linux_x86_64.tar.gz"
        sha256 "0a4d13b60220cb40cfadf0ac1cbb89285b88df0e6a8d846fa10685f1850a463d"
      end
      if Hardware::CPU.arm?
        url "https://github.com/lentidas/hledger-price-tracker/releases/download/v0.1.4/hledger-price-tracker_Linux_arm64.tar.gz"
        sha256 "0e7569625aa8e82809029665641f4035394ca538d1ba92c90d7c97285b2c3740"
      end
    end
  end

  def install
    bin.install "hledger-price-tracker"
  end
end
