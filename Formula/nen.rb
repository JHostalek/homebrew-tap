class Nen < Formula
  desc "CLI wrapper for NEN, the Czech national e-procurement tool - public tenders"
  homepage "https://github.com/JHostalek/nen-cli"
  url "https://github.com/JHostalek/nen-cli/releases/download/v0.1.0/nen-macos-arm64-v0.1.0.tar.gz"
  sha256 "343a2f590888b72e8ea3ddae70f67e1b3d313f7dd44749b90d5a6c586b59ed16"
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
