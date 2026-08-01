class Nen < Formula
  desc "CLI wrapper for NEN, the Czech national e-procurement tool - public tenders"
  homepage "https://github.com/JHostalek/nen-cli"
  url "https://github.com/JHostalek/nen-cli/releases/download/v1.1.0/nen-macos-arm64-v1.1.0.tar.gz"
  sha256 "c9026989815e167e77753f80f6f47ae57281f25cf324cc0a8277e3992387b560"
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
