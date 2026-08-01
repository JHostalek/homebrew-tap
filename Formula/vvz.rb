class Vvz < Formula
  desc "CLI client for the Czech public procurement journal Věstník veřejných zakázek"
  homepage "https://github.com/JHostalek/vvz-cli"
  url "https://github.com/JHostalek/vvz-cli/releases/download/v0.1.1/vvz-macos-arm64-v0.1.1.tar.gz"
  sha256 "c6a7b253991fbb35359d9bc546979172aaa4bce934fd36f36abe1fe92715f213"
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
