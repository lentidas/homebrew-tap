# typed: false
# frozen_string_literal: true

require "formula"
require_relative "../github-private-repository.rb"

class HledgerCsvParser < Formula
  desc "CLI tool to get market prices for commodities"
  homepage "https://github.com/lentidas/hledger-csv-parser"
  version "0.1.19"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.19/hledger-csv-parser_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy 
      sha256 "0b111abdb26fbc6c83c9c021b8afc931d7d04df1602b8e7e83ac8bd4819532a2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.19/hledger-csv-parser_Darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "5cba2040092bcc18ddf967f8e5d3ac50ee4dab5aa47d59dd13e0841667662032"
    end
  end

  on_linux do
    if Hardware::CPU.is_64_bit?
      if Hardware::CPU.intel?
        url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.19/hledger-csv-parser_Linux_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "0f4bdbb16f3f1b97e79e7321f0f99e4adbd0f5616cbbf7a6d8537e860cabbbe0"
      end
      if Hardware::CPU.arm?
        url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.19/hledger-csv-parser_Linux_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "5fd715d41bc41877828286d3a5f13d362c11f64473fc404aff78475b227efc02"
      end
    end
  end

  def install
    bin.install "hledger-csv-parser"
  end
end
