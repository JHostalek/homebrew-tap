class Ares < Formula
  desc "CLI wrapper for the Czech ARES REST API - economic-subject registries"
  homepage "https://github.com/JHostalek/ares-cli"
  url "https://github.com/JHostalek/ares-cli/releases/download/v0.4.1/ares-macos-arm64-v0.4.1.tar.gz"
  sha256 "b53a8d238186baf9481050d921a47c5f902d7d81d78bb0b6ef4d8dcfea79214a"
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
