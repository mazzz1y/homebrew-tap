# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mcli < Formula
  desc "A simple shortcut menu for shell commands"
  homepage "https://github.com/mazzz1y/mcli"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mazzz1y/mcli/releases/download/v1.2.0/mcli_1.2.0_darwin_arm64.tar.gz"
      sha256 "d4649210a5a75c73eee619a251bf4dad4e10a47289bf7d7a915eb903f11c7e93"

      def install
        bin.install "mcli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mazzz1y/mcli/releases/download/v1.2.0/mcli_1.2.0_darwin_amd64.tar.gz"
      sha256 "b48ba51a0981fd58ef3f70ba58a81ac9f81f9b1c64149be2fb3f6f322e6730bb"

      def install
        bin.install "mcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mazzz1y/mcli/releases/download/v1.2.0/mcli_1.2.0_linux_arm64.tar.gz"
      sha256 "7f7f5b1ad167ff92d7343d7a88ca9cbab04f9dfea61982b2f3ee7449c9b20b2d"

      def install
        bin.install "mcli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mazzz1y/mcli/releases/download/v1.2.0/mcli_1.2.0_linux_amd64.tar.gz"
      sha256 "c5f3ca272c073a4ebf17eb4a67115d78b0fdd0d06e171174cfba425ad1031a50"

      def install
        bin.install "mcli"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mazzz1y/mcli/releases/download/v1.2.0/mcli_1.2.0_linux_armv6.tar.gz"
      sha256 "763b23c33c3ee757c1ebc66f92178bd9e44ff7c2379e1b854bd6bb387cf7fea8"

      def install
        bin.install "mcli"
      end
    end
  end
end
