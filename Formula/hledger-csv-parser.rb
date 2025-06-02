# typed: false
# frozen_string_literal: true

require "formula"
require_relative "../github-private-repository.rb"

class HledgerCsvParser < Formula
  desc "CLI tool to get market prices for commodities"
  homepage "https://github.com/lentidas/hledger-csv-parser"
  version "0.1.3"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.3/hledger-csv-parser_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy 
      sha256 "0178044f94887b76a96cc5b03b81b7dbcbef306a3b28bd27291b820f7bb413be"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.3/hledger-csv-parser_Darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "33646b962accf38a71911a1df9484ef0d286389d501f4a7619023fd5853aed74"
    end
  end

  on_linux do
    if Hardware::CPU.is_64_bit?
      if Hardware::CPU.intel?
        url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.3/hledger-csv-parser_Linux_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "80900b477841e38e81fb22a7990936674dc97c6a677e73a324585b3eadb0bf55"
      end
      if Hardware::CPU.arm?
        url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.3/hledger-csv-parser_Linux_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "0262c970679e93cefe409f0efb2d80c84575b54795e4fb242b911153f1126852"
      end
    end
  end

  def install
    bin.install "hledger-csv-parser"
  end
end
