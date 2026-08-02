class Hs < Formula
  desc "CLI wrapper for the Hlídač státu REST API v2"
  homepage "https://github.com/JHostalek/hlidac-statu-cli"
  url "https://github.com/JHostalek/hlidac-statu-cli/releases/download/v0.7.0/hs-macos-arm64-v0.7.0.tar.gz"
  sha256 "17e8f77134e95a63b33e7e373aa92977cdd8228c2addb37e2872ad47443bfb02"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "hs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hs --version")
  end
end
