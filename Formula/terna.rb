class Terna < Formula
  desc "CLI wrapper for the Terna Transparency API - Italian electricity grid data"
  homepage "https://github.com/JHostalek/terna-cli"
  version "0.0.0"
  url "https://github.com/JHostalek/terna-cli/releases/download/v#{version}/terna-macos-arm64-v#{version}.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "terna"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terna --version")
  end
end
