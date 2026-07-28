class Ares < Formula
  desc "CLI wrapper for the Czech ARES REST API - economic-subject registries"
  homepage "https://github.com/JHostalek/ares-cli"
  version "0.2.1"
  url "https://github.com/JHostalek/ares-cli/releases/download/v#{version}/ares-macos-arm64-v#{version}.tar.gz"
  sha256 "fdf8f77868814e2a394c86e8a6c5c00fd7a62c313c8a17e7be7e6bbbc08464b3"
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
