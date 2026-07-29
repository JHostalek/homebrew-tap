class Hs < Formula
  desc "CLI wrapper for the Hlídač státu REST API v2"
  homepage "https://github.com/JHostalek/hlidac-statu-cli"
  url "https://github.com/JHostalek/hlidac-statu-cli/releases/download/v0.4.0/hs-macos-arm64-v0.4.0.tar.gz"
  sha256 "8a12e3c4f710b2623517a3871ba9330d10b7340e30e56639774cdc3f13e64289"
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
