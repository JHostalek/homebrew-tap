class Ares < Formula
  desc "CLI wrapper for the Czech ARES REST API - economic-subject registries"
  homepage "https://github.com/JHostalek/ares-cli"
  url "https://github.com/JHostalek/ares-cli/releases/download/v0.4.2/ares-macos-arm64-v0.4.2.tar.gz"
  sha256 "ee830ca1705c04f429913293aa2a8776c77f74559987139c1d93c5b6e956758f"
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
