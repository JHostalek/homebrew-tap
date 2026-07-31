class Nen < Formula
  desc "CLI wrapper for NEN, the Czech national e-procurement tool - public tenders"
  homepage "https://github.com/JHostalek/nen-cli"
  url "https://github.com/JHostalek/nen-cli/releases/download/v1.0.0/nen-macos-arm64-v1.0.0.tar.gz"
  sha256 "ec9db477ac99b492e4f5530d409f2e90959a2791860bf4d25096dbc71c313e58"
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
