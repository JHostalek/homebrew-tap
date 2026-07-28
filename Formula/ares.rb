class Ares < Formula
  desc "CLI wrapper for the Czech ARES REST API - economic-subject registries"
  homepage "https://github.com/JHostalek/ares-cli"
  version "0.2.0"
  url "https://github.com/JHostalek/ares-cli/releases/download/v#{version}/ares-macos-arm64-v#{version}.tar.gz"
  sha256 "056d44f916629cab0f6745e60ab0332838db25fa88242e5498728a9979f2696c"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "ares"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ares --version")
  end
end
