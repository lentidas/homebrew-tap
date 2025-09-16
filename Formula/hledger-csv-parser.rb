# typed: false
# frozen_string_literal: true

require "formula"
require_relative "../github-private-repository.rb"

class HledgerCsvParser < Formula
  desc "CLI tool to get market prices for commodities"
  homepage "https://github.com/lentidas/hledger-csv-parser"
  version "0.1.12"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.12/hledger-csv-parser_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy 
      sha256 "a6b3b7c4979edd88b1bdd58505292679993915b853bb505acfa33e05eb11f1f7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.12/hledger-csv-parser_Darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f9c5bc1b20dd4dd9d89873ba87b68ef3d13d9cc546538b5372e5c3b4eaacf6ac"
    end
  end

  on_linux do
    if Hardware::CPU.is_64_bit?
      if Hardware::CPU.intel?
        url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.12/hledger-csv-parser_Linux_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "ea9ebba243fc6a46425cc270f5f64750d1c596ec37f3cdad01aac1aa6c32a31e"
      end
      if Hardware::CPU.arm?
        url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.12/hledger-csv-parser_Linux_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "5524b284ec97253f737184aa0bda70e28951fff0181de4ac17dcc707c57915f6"
      end
    end
  end

  def install
    bin.install "hledger-csv-parser"
  end
end
