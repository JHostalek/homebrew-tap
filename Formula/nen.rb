class Nen < Formula
  desc "CLI wrapper for NEN, the Czech national e-procurement tool - public tenders"
  homepage "https://github.com/JHostalek/nen-cli"
  url "https://github.com/JHostalek/nen-cli/releases/download/v1.0.1/nen-macos-arm64-v1.0.1.tar.gz"
  sha256 "238b02debfeac9c05342e3a0d542e3e4f0d8e0dce5e96ad2e69da92880f6162e"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "nen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nen --version")
  end
end
