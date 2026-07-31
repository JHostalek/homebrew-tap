class Hs < Formula
  desc "CLI wrapper for the Hlídač státu REST API v2"
  homepage "https://github.com/JHostalek/hlidac-statu-cli"
  url "https://github.com/JHostalek/hlidac-statu-cli/releases/download/v0.5.0/hs-macos-arm64-v0.5.0.tar.gz"
  sha256 "9ec9999e71fc938149ade4f2fd65e2e5c4eedd97961129e812b8f4c7575cde69"
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
