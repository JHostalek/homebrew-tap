class Vvz < Formula
  desc "CLI client for the Czech public procurement journal Věstník veřejných zakázek"
  homepage "https://github.com/JHostalek/vvz-cli"
  url "https://github.com/JHostalek/vvz-cli/releases/download/v0.1.3/vvz-macos-arm64-v0.1.3.tar.gz"
  sha256 "6f83dc6291e9c90b591a516ccd0b6d451752eda9c2cc4214a1b6d45407a2545c"
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
