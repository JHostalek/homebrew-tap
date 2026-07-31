class Vvz < Formula
  desc "CLI client for the Czech public procurement journal Věstník veřejných zakázek"
  homepage "https://github.com/JHostalek/vvz-cli"
  url "https://github.com/JHostalek/vvz-cli/releases/download/v0.1.0/vvz-macos-arm64-v0.1.0.tar.gz"
  sha256 "b3663d3c001a7b9f4524ac5b425216cb4c460bfa502159bce03519375bf43f70"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "vvz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vvz --version")
  end
end
