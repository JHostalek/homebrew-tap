class Ares < Formula
  desc "CLI wrapper for the Czech ARES REST API - economic-subject registries"
  homepage "https://github.com/JHostalek/ares-cli"
  version "0.3.0"
  url "https://github.com/JHostalek/ares-cli/releases/download/v#{version}/ares-macos-arm64-v#{version}.tar.gz"
  sha256 "bb128e0dc7c7abb2bb4820e787913517e0c1f58fa61d078aa9904021dd27bd6f"
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
