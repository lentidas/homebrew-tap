# typed: false
# frozen_string_literal: true

require "formula"
require_relative "../github-private-repository.rb"

class HledgerCsvParser < Formula
  desc "CLI tool to get market prices for commodities"
  homepage "https://github.com/lentidas/hledger-csv-parser"
  version "0.1.15"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.15/hledger-csv-parser_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy 
      sha256 "8352c272086c02e76ddcf9853ba5e06c20c6376ab3f3d4144d603cf0de0df707"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.15/hledger-csv-parser_Darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "add389761601ab34ae76d8aae36830dc8206d2fcdc2ab269c719cc838613f9fa"
    end
  end

  on_linux do
    if Hardware::CPU.is_64_bit?
      if Hardware::CPU.intel?
        url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.15/hledger-csv-parser_Linux_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "fc3dde92bbf0abf42dda82b4ab00197d190b4362da8b9e3c34a72d54acbecb35"
      end
      if Hardware::CPU.arm?
        url "https://github.com/lentidas/hledger-csv-parser/releases/download/v0.1.15/hledger-csv-parser_Linux_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "d4cb3d64cae05875d10726b0ab2ef4487bcf123ececd862a0592c8c856444383"
      end
    end
  end

  def install
    bin.install "hledger-csv-parser"
  end
end
