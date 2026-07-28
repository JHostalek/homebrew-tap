class Ares < Formula
  desc "CLI wrapper for the Czech ARES REST API - economic-subject registries"
  homepage "https://github.com/JHostalek/ares-cli"
  version "0.1.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/JHostalek/ares-cli/releases/download/v#{version}/ares-darwin-arm64"
    sha256 "6525c32f1eacfba8d097f9bfaf6f47d2a4a0055f324d1a028054f5211edff654"
  end

  on_intel do
    url "https://github.com/JHostalek/ares-cli/releases/download/v#{version}/ares-darwin-x64"
    sha256 "3082047b5d9d559ec77ac5c527562e67c22dbe21921dd41c27d3da1177233dd9"
  end

  def install
    bin.install "ares-darwin-#{Hardware::CPU.arm? ? "arm64" : "x64"}" => "ares"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ares --version")
  end
end
