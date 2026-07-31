class Ares < Formula
  desc "CLI wrapper for the Czech ARES REST API - economic-subject registries"
  homepage "https://github.com/JHostalek/ares-cli"
  url "https://github.com/JHostalek/ares-cli/releases/download/v0.4.0/ares-macos-arm64-v0.4.0.tar.gz"
  sha256 "938a810066cc756ca8523b1126dba0e6c738d80e80baf88cd50abcb3bfd0c43d"
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
