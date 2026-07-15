class Terna < Formula
  desc "CLI wrapper for the Terna Transparency API - Italian electricity grid data"
  homepage "https://github.com/JHostalek/terna-cli"
  version "0.2.0"
  url "https://github.com/JHostalek/terna-cli/releases/download/v#{version}/terna-macos-arm64-v#{version}.tar.gz"
  sha256 "1d126bed311a1c29afba0fde635d73da41f80a7f3348b0217958e3745f7052d6"
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
