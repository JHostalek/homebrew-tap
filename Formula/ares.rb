class Ares < Formula
  desc "CLI wrapper for the Czech ARES REST API - economic-subject registries"
  homepage "https://github.com/JHostalek/ares-cli"
  version "0.1.0"
  url "https://github.com/JHostalek/ares-cli/releases/download/v#{version}/ares-macos-arm64-v#{version}.tar.gz"
  sha256 "0ccdf28637fae0f5e3d59ff988715ac706f988080bf6f06a3047d71cbca6c7a1"
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
