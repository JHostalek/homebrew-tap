class Hs < Formula
  desc "CLI wrapper for the Hlídač státu REST API v2"
  homepage "https://github.com/JHostalek/hlidac-statu-cli"
  version "0.0.0"
  url "https://github.com/JHostalek/hlidac-statu-cli/releases/download/v#{version}/hs-macos-arm64-v#{version}.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
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
