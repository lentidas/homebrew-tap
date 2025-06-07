# typed: false
# frozen_string_literal: true

require "formula"
require_relative "../github-private-repository.rb"

class HledgerCsvParser < Formula
  desc "CLI tool to get market prices for commodities"
  homepage "https://github.com/lentidas/hledger-csv-parser"
  version "0.1.5"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.5/hledger-csv-parser_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy 
      sha256 "fee06873443711f1b04f1b5f3d4ba920772c82f4959fc3821ea2a43683ecb0a5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.5/hledger-csv-parser_Darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "7f74de240763d6bae7cf58671c79fc93ab7673a4b27375fa7aaed18f48dd4d86"
    end
  end

  on_linux do
    if Hardware::CPU.is_64_bit?
      if Hardware::CPU.intel?
        url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.5/hledger-csv-parser_Linux_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "fdcacebef974813d1faf5bebf1a5c54a6070fe30dc3896c4e4ff75cdf05ae08b"
      end
      if Hardware::CPU.arm?
        url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.5/hledger-csv-parser_Linux_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "987ab5285a7b7acd3dc0b66744068098c8bba0c46f9b1d0a01e7eea2b9b8624b"
      end
    end
  end

  def install
    bin.install "hledger-csv-parser"
  end
end
