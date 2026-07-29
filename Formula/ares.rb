class Ares < Formula
  desc "CLI wrapper for the Czech ARES REST API - economic-subject registries"
  homepage "https://github.com/JHostalek/ares-cli"
  url "https://github.com/JHostalek/ares-cli/releases/download/v0.3.1/ares-macos-arm64-v0.3.1.tar.gz"
  sha256 "32abe854748864fd1c353117ab8010a3e28a97a52075aaadb465cebd08919f61"
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
